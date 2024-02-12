#pragma once

#include <Geode/Geode.hpp>
#include <Geode/utils/MiniFunction.hpp>
#include <memory>

using namespace geode::prelude;

namespace geode {
    // TODO: new index idk why these are here
    /**
     * Status signifying an index-related download has been finished
     */
    using UpdateFinished = std::monostate;
    /**
     * Status signifying an index-related download is in progress. First element
     * in pair is percentage downloaded, second is status string
     */
    using UpdateProgress = std::pair<uint8_t, std::string>;
    /**
     * Status signifying an index-related download has failed. Consists of the
     * error string
     */
    using UpdateFailed = std::string;
    /**
     * Status code for an index-related download
     */
    using UpdateStatus = std::variant<UpdateFinished, UpdateProgress, UpdateFailed>;

    class IndexItem {
    public:
        std::string m_modId;
        VersionInfo m_version;
        std::string m_name;
        std::string m_description;
        std::string m_developer;
        std::string m_downloadUrl;
        bool m_isAPI;

        ModMetadata intoMetadata() const {
            ModMetadata metadata;
            metadata.setID(m_modId);
            metadata.setVersion(m_version);
            metadata.setName(m_name);
            metadata.setDescription(m_description);
            metadata.setDeveloper(m_developer);
            metadata.setIsAPI(m_isAPI);
            return metadata;
        }

        ModMetadata getMetadata() const {
            return intoMetadata();
        }

        std::string getDownloadURL() const;
        std::string getPackageHash() const;
        std::unordered_set<PlatformID> getAvailablePlatforms() const;
        bool isFeatured() const;
        std::unordered_set<std::string> getTags() const;
        bool isInstalled() const;
    };

    using IndexItemHandle = std::shared_ptr<IndexItem>;

    class DetailedIndexItem : public IndexItem {
    public:
        std::optional<std::string> m_about;
        std::optional<std::string> m_changelog;
        // flattened out dependencies
        // can contain duplicates
        std::vector<IndexItem> m_dependencies;

        ModMetadata intoMetadata() const {
            ModMetadata metadata = IndexItem::intoMetadata();
            metadata.setDetails(m_about);
            metadata.setChangelog(m_changelog);
            return metadata;
        }
    };

    /**
     * Event for when a mod is being installed from the index. Automatically
     * broadcast by the mods index; use ModInstallFilter to listen to these
     * events
     */
    struct GEODE_DLL ModInstallEvent : public Event {
        /**
         * The ID of the mod being installed
         */
        const std::string modID;
        /**
         * The current status of the installation
         */
        const UpdateStatus status;

    private:
        ModInstallEvent(std::string const& id, const UpdateStatus status);

        friend class Index;
    };

    /**
     * Basic filter for listening to mod installation events. Always propagates
     * the event down the chain
     */
	class GEODE_DLL ModInstallFilter : public EventFilter<ModInstallEvent> {
    protected:
        std::string m_id;

	public:
		using Callback = void(ModInstallEvent*);

        ListenerResult handle(utils::MiniFunction<Callback> fn, ModInstallEvent* event);
		ModInstallFilter(std::string const& id);
        ModInstallFilter(ModInstallFilter const&) = default;
	};

    struct IndexInstallList {
        /**
         * Mod being installed
         */
        IndexItemHandle target;
        /**
         * The mod, its dependencies, everything needed to install it
         */
        std::vector<IndexItemHandle> list;
    };

    struct IndexQuery {
        std::string m_search;
    };

    template <class Type>
    class IndexPromise : public std::enable_shared_from_this<IndexPromise<Type>> {
        MiniFunction<void(Type)> m_then;
        MiniFunction<void(std::string const&)> m_expect;

        // TODO: this is definitely copying the `Type` when it shouldnt..
        void setup(MiniFunction<void(MiniFunction<void(Type)> resolve, MiniFunction<void(std::string const&)> reject)> callback) {
            auto ptr = this->shared_from_this();
            callback([=](auto&& value) {
                // TODO: epic race condition i think,
                // promise could resolve before m_then is set!
                if (ptr->m_then) {
                    ptr->m_then(value);
                }
            }, [=](auto&& error) {
                if (ptr->m_expect) {
                    ptr->m_expect(error);
                }
            });
        }
    public:
        auto then(auto cb) {
            m_then = cb;
            return this->shared_from_this();
        }

        auto expect(auto cb) {
            m_expect = cb;
            return this->shared_from_this();
        }

        static std::shared_ptr<IndexPromise<Type>> create(MiniFunction<void(MiniFunction<void(Type)> resolve, MiniFunction<void(std::string const&)> reject)> callback) {
            auto ptr = std::make_shared<IndexPromise<Type>>();
            ptr->setup(callback);
            return ptr;
        }
    };

    class Index {
        int m_pageLimit = 20;
    public:
        static Index* get() {
            static Index instance;
            return &instance;
        }

        int getPageLimit() const {
            return m_pageLimit;
        }

        bool isUpdating() const { return false;}

        std::vector<std::string> getTags() const {
            return {};
        }

        // server callback
        // todo: caching
        std::shared_ptr<IndexPromise<std::vector<IndexItem> const&>> searchMods(int page, IndexQuery const& query);

        std::shared_ptr<IndexPromise<DetailedIndexItem const&>> fetchModInfo(std::string const& modId);
    };
};