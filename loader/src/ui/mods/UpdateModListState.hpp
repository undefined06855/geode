#pragma once

#include <Geode/loader/Event.hpp>
#include "sources/ModSource.hpp"

using namespace geode::prelude;

struct UpdatePageNumberState final {
    constexpr bool operator==(UpdatePageNumberState const&) const = default;
};
struct UpdateWholeState final {
    constexpr bool operator==(UpdateWholeState const&) const = default;
};
struct UpdateModState final {
    std::string modID;
    inline explicit UpdateModState(std::string const& modID) : modID(modID) {};
    constexpr bool operator==(UpdateModState const&) const = default;
};
using UpdateState = std::variant<UpdatePageNumberState, UpdateWholeState, UpdateModState>;

struct UpdateModListStateEvent : public Event {
    UpdateState target;

    UpdateModListStateEvent(UpdateState&& target);
};

class UpdateModListStateFilter : public EventFilter<UpdateModListStateEvent> {
public:
    using Callback = void(UpdateModListStateEvent*);

protected:
    UpdateState m_target;

public:
    ListenerResult handle(MiniFunction<Callback> fn, UpdateModListStateEvent* event);

    UpdateModListStateFilter();
    UpdateModListStateFilter(UpdateState&& target);
};