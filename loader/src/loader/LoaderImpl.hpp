#include "FileWatcher.hpp"

#include <Geode/external/json/json.hpp>
#include <Geode/loader/Dirs.hpp>
#include <Geode/loader/Index.hpp>
#include <Geode/loader/Loader.hpp>
#include <Geode/loader/Log.hpp>
#include <Geode/loader/Mod.hpp>
#include <Geode/utils/Result.hpp>
#include <Geode/utils/map.hpp>
#include <Geode/utils/ranges.hpp>
#include <InternalMod.hpp>
#include <about.hpp>
#include <crashlog.hpp>
#include <mutex>
#include <optional>
#include <thread>
#include <unordered_map>
#include <unordered_set>
#include <vector>

struct ResourceDownloadEvent : public Event {
    const UpdateStatus status;
    ResourceDownloadEvent(UpdateStatus const& status);
};

class GEODE_DLL ResourceDownloadFilter : public EventFilter<ResourceDownloadEvent> {
public:
    using Callback = void(ResourceDownloadEvent*);

    ListenerResult handle(std::function<Callback> fn, ResourceDownloadEvent* event);
    ResourceDownloadFilter();
};

// TODO: Find a file convention for impl headers
namespace geode {
    class LoaderImpl;
}

class Loader::Impl {
public:
    mutable std::mutex m_mutex;

    std::vector<ghc::filesystem::path> m_modSearchDirectories;
    std::vector<ModInfo> m_modsToLoad;
    std::vector<InvalidGeodeFile> m_invalidMods;
    std::unordered_map<std::string, Mod*> m_mods;
    std::vector<ghc::filesystem::path> m_texturePaths;
    std::vector<ScheduledFunction> m_scheduledFunctions;
    mutable std::mutex m_scheduledFunctionsMutex;
    bool m_isSetup = false;

    std::condition_variable m_earlyLoadFinishedCV;
    std::mutex m_earlyLoadFinishedMutex;
    std::atomic_bool m_earlyLoadFinished = false;

    // InternalLoader
    std::vector<std::function<void(void)>> m_gdThreadQueue;
    mutable std::mutex m_gdThreadMutex;
    bool m_platformConsoleOpen = false;
    std::unordered_set<std::string> m_shownInfoAlerts;

    std::vector<std::pair<Hook*, Mod*>> m_internalHooks;
    bool m_readyToHook = false;

    void saveInfoAlerts(nlohmann::json& json);
    void loadInfoAlerts(nlohmann::json& json);

    void downloadLoaderResources();

    bool loadHooks();
    void setupIPC();

    Impl();
    ~Impl();

    void createDirectories();

    void updateModResources(Mod* mod);
    void addSearchPaths();

    void dispatchScheduledFunctions(Mod* mod);
    friend void GEODE_CALL ::geode_implicit_load(Mod*);

    Result<Mod*> loadModFromInfo(ModInfo const& info);

    Result<> setup();
    void reset();

    Result<> saveData();
    Result<> loadData();

    VersionInfo getVersion();
    VersionInfo minModVersion();
    VersionInfo maxModVersion();
    bool isModVersionSupported(VersionInfo const& version);

    Result<Mod*> loadModFromFile(ghc::filesystem::path const& file);
    void loadModsFromDirectory(ghc::filesystem::path const& dir, bool recursive = true);
    void refreshModsList();
    bool isModInstalled(std::string const& id) const;
    Mod* getInstalledMod(std::string const& id) const;
    bool isModLoaded(std::string const& id) const;
    Mod* getLoadedMod(std::string const& id) const;
    std::vector<Mod*> getAllMods();
    Mod* getInternalMod();
    void updateAllDependencies();
    std::vector<InvalidGeodeFile> getFailedMods() const;

    void updateResources();

    void scheduleOnModLoad(Mod* mod, ScheduledFunction func);
    void waitForModsToBeLoaded();

    bool didLastLaunchCrash() const;

    nlohmann::json processRawIPC(void* rawHandle, std::string const& buffer);

    /**
     * Check if a one-time event has been shown to the user,
     * and set it to true if not. Will return the previous
     * state of the event before setting it to true
     */
    bool shownInfoAlert(std::string const& key);

    void queueInGDThread(ScheduledFunction func);
    void executeGDThreadQueue();

    void logConsoleMessage(std::string const& msg);
    bool platformConsoleOpen() const;
    void openPlatformConsole();
    void closePlatformConsole();
    void platformMessageBox(char const* title, std::string const& info);

    bool verifyLoaderResources();

    bool isReadyToHook() const;
    void addInternalHook(Hook* hook, Mod* mod);
};

namespace geode {
    class LoaderImpl {
    public:
        static Loader::Impl* get();
    };
}