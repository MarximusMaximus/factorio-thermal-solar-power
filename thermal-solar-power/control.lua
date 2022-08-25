local temperature = 15

-- 4.7056 and 0.85 are "fairly realistic" (enough for a game) for Earth, for a perfect Black Body Object that continually gains heat with near zero heat loss
local TEMPERATURE_FACTOR = 4.7056
local TEMPERATURE_MULTIPLIER = 0.85

function handle_build(entity)
    if global.CW_Thermal_solar_panel_table == nil then
        global.CW_Thermal_solar_panel_table = {}
    end

    if entity.name == "tsp-thermal-solar-panel" or
        entity.name == "tsp-thermal-solar-panel2" or
        entity.name == "tsp-thermal-solar-panel3" or
        entity.name == "tsp-thermal-solar-panel4" then
            global.CW_Thermal_solar_panel_table[entity.unit_number] = entity
            entity.temperature = temperature

    end

    if entity.name == "tsp-molten-salt-heat-accumulator" or
        entity.name == "tsp-molten-salt-heat-accumulator2" or
        entity.name == "tsp-molten-salt-heat-accumulator3" then
            entity.temperature = temperature
    end
end

function on_script_built(event)
    handle_build(event.entity)
end

function on_built(event)
    handle_build(event.created_entity)
end

function on_remove(event)
    local entity = event.entity

    if entity.name == "tsp-thermal-solar-panel" or
        entity.name == "tsp-thermal-solar-panel2" or
        entity.name == "tsp-thermal-solar-panel3" or
        entity.name == "tsp-thermal-solar-panel4" and
        global.CW_Thermal_solar_panel_table ~= nil then
            global.CW_Thermal_solar_panel_table[entity.unit_number] = nil
    end
end

function onChange(evt)
    for _, force in pairs(game.forces) do
        force.reset_technology_effects()
    end
end

function on_tick(event)
    if event.tick % 60 == 0 and global.CW_Thermal_solar_panel_table ~= nil then
        for _, panel in pairs(global.CW_Thermal_solar_panel_table) do
            if panel.valid then
                panel.temperature = panel.temperature + TEMPERATURE_FACTOR*(TEMPERATURE_MULTIPLIER - panel.surface.darkness)
                --game.print(TEMPERATURE_FACTOR*(TEMPERATURE_MULTIPLIER - panel.surface.darkness))
            end
        end
    end
end

function on_pre_build(event)
    local player = game.players[event.player_index]
    local surface = player.surface
    local position = event.position
    local area = {
        {x = position.x - 0.1,y = position.y - 0.1},
        {x = position.x + 0.1, y = position.y + 0.1}
    }
    temperature = 15

    local entities = surface.find_entities_filtered{area = area}
    for i , entity in pairs(entities) do
        if entity ~= nil and entity.valid then

            if entity.name == "tsp-thermal-solar-panel" or
            entity.name == "tsp-thermal-solar-panel2" or
            entity.name == "tsp-thermal-solar-panel3" or
            entity.name == "tsp-thermal-solar-panel4" or
            entity.name == "tsp-molten-salt-heat-accumulator" or
            entity.name == "tsp-molten-salt-heat-accumulator2" or
            entity.name == "tsp-molten-salt-heat-accumulator3" then
                temperature = entity.temperature
            end
        end
    end
end

script.on_event({defines.events.on_tick}, on_tick)

script.on_event({defines.events.on_pre_build}, on_pre_build)

script.on_event(
    {
        defines.events.on_built_entity,
        defines.events.on_robot_built_entity
    },
    on_built
)

script.on_event(
    {
        defines.events.script_raised_built,
        defines.events.script_raised_revive
    },
    on_script_built
)

script.on_event(
    {
        defines.events.on_pre_player_mined_item,
        defines.events.on_robot_pre_mined,
        defines.events.on_entity_died,
        defines.events.script_raised_destroy
    },
    on_remove
)

script.on_configuration_changed(onChange)
