---------------------------------------------------------------------------------------

-- SOLAR PANNELS SPRITES

local thermal_solar_panel_1_sprite = 
{
	filename = "__thermal-solar-power__/graphics/entity/thermal-solar-panel-1/thermal_solar-panel_1.png",
	priority = "high",
	height = 112,
	width = 116,
	shift = {-0.09375,-0.09375},
}

local thermal_solar_panel_2_sprite = 
{
	filename = "__thermal-solar-power__/graphics/entity/thermal-solar-panel-2/thermal_solar-panel_2.png",
	priority = "high",
	height = 112,
	width = 116,
	shift = {-0.09375,-0.09375},
}

local thermal_solar_panel_3_sprite = 
{
	filename = "__thermal-solar-power__/graphics/entity/thermal-solar-panel-3/thermal_solar-panel_3.png",
	priority = "high",
	height = 112,
	width = 116,
	shift = {-0.09375,-0.09375},
}

local thermal_solar_panel_4_sprite = 
{
	filename = "__thermal-solar-power__/graphics/entity/thermal-solar-panel-4/thermal_solar-panel_4.png",
	priority = "high",
	height = 112,
	width = 116,
	shift = {-0.09375,-0.09375},
}

---------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------

-- ACCUMULATORS SPRITES

local accumulator_sprite = 
{
		filename = "__thermal-solar-power__/graphics/entity/heat-accumulator.png",
		priority = "high",
		scale = 0.81,
		width = 124,
		height = 103,
		shift = {0.5475, -0.203125}

}

---------------------------------------------------------------------------------------
-- UTILS

function sprites_todos(sprite)
	local td = {
		straight_vertical = sprite,
		straight_horizontal = sprite,
		corner_right_down = sprite,
		corner_left_down = sprite,
		corner_right_up = sprite,
		corner_left_up = sprite,
		t_up = sprite,
		t_right = sprite,
		t_down = sprite,
		t_left = sprite,
		ending_up = sprite,
		ending_right = sprite,
		ending_down = sprite,
		ending_left = sprite,
		cross = sprite,
		single = sprite,
		
	}
	return td
end

---------------------------------------------------------------------------------------

-- INITIALIZING ENTITIES

local solar_panel_1 = 
{
	type = "heat-pipe",
	name = "tsp-thermal-solar-panel",	
	max_health = 200,
	flags = {"placeable-neutral", "player-creation"},
	icon = "__thermal-solar-power__/graphics/icons/solar-panel1.png",
	icon_size = 32,
	fast_replaceable_group ="tsp-thermal-solar-panel",
	next_upgrade = "tsp-thermal-solar-panel2",
	
	selection_box = {{-1.5,	-1.5},{1.5,1.5},},
	collision_box = {{-1.2,-1.2},{1.2,1.2},},
	collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"},
	minable = {hardness = 0.25, mining_time = 1, result = "tsp-thermal-solar-panel"},
	resistances ={{type = "fire",percent = 100}},
	
	corpse = "medium-remnants",
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	
	picture = thermal_solar_panel_1_sprite,
	connection_sprites = sprites_todos(thermal_solar_panel_1_sprite),
	heat_glow_sprites =  sprites_todos(thermal_solar_panel_1_sprite),
	
	minimum_glow_temperature = 300,
	
	heat_buffer = {
		max_temperature = 800,
		specific_heat = "25KJ",
		max_transfer = "10MW",
		min_temperature_gradient = 0.1,
		connections = {
			{
				position = {0, -1},
				direction = defines.direction.north
			},
			{
				position = {0, 1},
				direction = defines.direction.south
			},
			{
				position = {1, 0},
				direction = defines.direction.east
			},
			{
				position = {-1, 0},
				direction = defines.direction.west
			},
		},
	},
	
}

local solar_panel_2 = table.deepcopy(solar_panel_1)
solar_panel_2.name = "tsp-thermal-solar-panel2"
solar_panel_2.icon = "__thermal-solar-power__/graphics/icons/solar-panel2.png"
solar_panel_2.minable.result = "tsp-thermal-solar-panel2"
solar_panel_2.heat_buffer.specific_heat = "37.5KJ"
solar_panel_2.heat_buffer.max_transfer = "10MW"
solar_panel_2.next_upgrade = "tsp-thermal-solar-panel3"
--change sprites
solar_panel_2.picture = thermal_solar_panel_2_sprite
solar_panel_2.connection_sprites = sprites_todos(thermal_solar_panel_2_sprite)
solar_panel_2.heat_glow_sprites =  sprites_todos(thermal_solar_panel_2_sprite)


local solar_panel_3 = table.deepcopy(solar_panel_1)
solar_panel_3.name = "tsp-thermal-solar-panel3"
solar_panel_3.icon = "__thermal-solar-power__/graphics/icons/solar-panel3.png"
solar_panel_3.minable.result = "tsp-thermal-solar-panel3"
solar_panel_3.heat_buffer.specific_heat = "50KJ"
solar_panel_3.heat_buffer.max_transfer = "12MW"
solar_panel_3.next_upgrade = "tsp-thermal-solar-panel4"
--change sprites
solar_panel_3.picture = thermal_solar_panel_3_sprite
solar_panel_3.connection_sprites = sprites_todos(thermal_solar_panel_3_sprite)
solar_panel_3.heat_glow_sprites =  sprites_todos(thermal_solar_panel_3_sprite)


local solar_panel_4 = table.deepcopy(solar_panel_1)
solar_panel_4.name = "tsp-thermal-solar-panel4"
solar_panel_4.icon = "__thermal-solar-power__/graphics/icons/solar-panel4.png"
solar_panel_4.minable.result = "tsp-thermal-solar-panel4"
solar_panel_4.heat_buffer.specific_heat = "62.5KJ"
solar_panel_4.heat_buffer.max_transfer = "14MW"
solar_panel_4.next_upgrade = ""
--change sprites
solar_panel_4.picture = thermal_solar_panel_4_sprite
solar_panel_4.connection_sprites = sprites_todos(thermal_solar_panel_4_sprite)
solar_panel_4.heat_glow_sprites =  sprites_todos(thermal_solar_panel_4_sprite)


data:extend({solar_panel_1, solar_panel_2, solar_panel_3, solar_panel_4})

---------------------------------------------------------------------------------------

local heat_accumulator_1 =
{
	type = "heat-pipe",
	name = "tsp-molten-salt-heat-accumulator",
	icon = "__thermal-solar-power__/graphics/icons/heat-accumulator1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation"},
	minable = {hardness = 0.5, mining_time = 1, result = "tsp-molten-salt-heat-accumulator"},
	max_health = 200,
	fast_replaceable_group ="tsp-heat-accumulator",
	next_upgrade = "tsp-molten-salt-heat-accumulator2",
		
	corpse = "medium-remnants",
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	resistances = {{type = "fire",percent = 100}},
	
	collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
	collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"},
	selection_box = {{-1, -1}, {1, 1}},
	minimum_glow_temperature = 350,
	glow_alpha_modifier = 0.6,

	picture = accumulator_sprite,
	connection_sprites = sprites_todos(accumulator_sprite),
	heat_glow_sprites = sprites_todos(accumulator_sprite),

	heat_buffer =
	{
		max_temperature = 2000,
		specific_heat = "5MJ",
		min_temperature_gradient = 0.7,
		max_transfer = "500MW",
		connections =
		{
			{
				position = {-0.5, -0.5},
				direction = defines.direction.north
			},
			{
				position = {0.5, -0.5},
				direction = defines.direction.north
			},
			{
				position = {0.5, -0.5},
				direction = defines.direction.east
			},
			{
				position = {0.5, 0.5},
				direction = defines.direction.east
			},
			{
				position = {-0.5, 0.5},
				direction = defines.direction.south
			},
			{
				position = {0.5, 0.5},
				direction = defines.direction.south
			},
			{
				position = {-0.5, -0.5},
				direction = defines.direction.west
			},
			{
				position = {-0.5, 0.5},
				direction = defines.direction.west
			}
		}
	},
}


local heat_accumulator_2 = table.deepcopy(heat_accumulator_1)
heat_accumulator_2.name = "tsp-molten-salt-heat-accumulator2"
heat_accumulator_2.icon = "__thermal-solar-power__/graphics/icons/heat-accumulator2.png"
heat_accumulator_2.minable.result = "tsp-molten-salt-heat-accumulator2"
heat_accumulator_2.heat_buffer.specific_heat = "10MJ"
heat_accumulator_2.heat_buffer.max_transfer = "1GW"
heat_accumulator_2.heat_buffer.min_temperature_gradient = 0.4
heat_accumulator_2.next_upgrade = "tsp-molten-salt-heat-accumulator3"

local heat_accumulator_3 = table.deepcopy(heat_accumulator_1)
heat_accumulator_3.name = "tsp-molten-salt-heat-accumulator3"
heat_accumulator_3.icon = "__thermal-solar-power__/graphics/icons/heat-accumulator3.png"
heat_accumulator_3.minable.result = "tsp-molten-salt-heat-accumulator3"
heat_accumulator_3.heat_buffer.specific_heat = "20MJ"
heat_accumulator_3.heat_buffer.max_transfer = "2GW"
heat_accumulator_3.heat_buffer.min_temperature_gradient = 0.1
heat_accumulator_3.next_upgrade = ""

data:extend({heat_accumulator_1,heat_accumulator_2,heat_accumulator_3})

------------------------------------------------------------------------------------------
local recycler = table.deepcopy(data.raw.furnace["electric-furnace"])
recycler.allowed_effects = {}
recycler.crafting_speed = 1
recycler.fast_replaceable_group = ""
recycler.minable.result = "tsp-recycler"
recycler.name = "tsp-recycler"
recycler.module_specification.module_slots = 0
recycler.result_inventory_size = 15
recycler.crafting_categories = {"tsp-recycle-solar-items"}

data:extend({recycler})

------------------------------------------------------------------------------------------

if settings.startup["heat-exchanger-enabled"].value then

	local HeatExchanger = table.deepcopy(data.raw.boiler["heat-exchanger"])
	HeatExchanger.name = "tsp-basic-heat-exchanger"
	HeatExchanger.icon = "__thermal-solar-power__/graphics/icons/heat-boiler1.png"
	HeatExchanger.icon_size = 32
	HeatExchanger.target_temperature = 165.0
	HeatExchanger.energy_source.min_working_temperature = 165.0
	HeatExchanger.energy_source.min_temperature_gradient = 1 -- should be something between 0.001 and 1
	HeatExchanger.energy_source.max_temperature = 225
    HeatExchanger.energy_source.specific_heat = "100KJ"
    HeatExchanger.energy_source.max_transfer = "6000kW"
	HeatExchanger.output_fluid_box.base_area = 10
	HeatExchanger.energy_consumption = "1.8MW"
	HeatExchanger.minable = {hardness = 0.2, mining_time = 0.5, result = "tsp-basic-heat-exchanger"}
	HeatExchanger.fast_replaceable_group = "boiler"

	if not mods["bobpower"] then
		HeatExchanger.next_upgrade = "tsp-basic-heat-exchanger2"

		local HeatExchanger2 = table.deepcopy(data.raw.boiler["heat-exchanger"])
		HeatExchanger2.name = "tsp-basic-heat-exchanger2"
		HeatExchanger2.icon = "__thermal-solar-power__/graphics/icons/heat-boiler2.png"
		HeatExchanger2.icon_size = 32
		HeatExchanger2.output_fluid_box.base_area = 15
		HeatExchanger2.target_temperature = 315
		HeatExchanger2.energy_source.min_working_temperature = 315
		HeatExchanger2.energy_source.min_temperature_gradient = 1
		HeatExchanger2.energy_source.max_temperature = 380
		HeatExchanger2.energy_source.specific_heat = "120KJ"
		HeatExchanger2.energy_source.max_transfer = "7200kW"
		HeatExchanger2.energy_consumption = "3.6MW"
		HeatExchanger2.minable = {hardness = 0.2, mining_time = 0.5, result = "tsp-basic-heat-exchanger2"}
		HeatExchanger2.fast_replaceable_group = "boiler"
		HeatExchanger2.next_upgrade = "tsp-basic-heat-exchanger3"

		local HeatExchanger3 = table.deepcopy(data.raw.boiler["heat-exchanger"])
		HeatExchanger3.name = "tsp-basic-heat-exchanger3"
		HeatExchanger3.icon = "__thermal-solar-power__/graphics/icons/heat-boiler3.png"
		HeatExchanger3.icon_size = 32
		HeatExchanger3.target_temperature = 465.0
		HeatExchanger3.energy_source.min_working_temperature = 465.0
		HeatExchanger3.energy_source.min_temperature_gradient = 1
		HeatExchanger3.energy_source.max_temperature = 565.0
		HeatExchanger3.energy_source.specific_heat = "140KJ"
		HeatExchanger3.energy_source.max_transfer = "8400kW"
		HeatExchanger3.output_fluid_box.base_area = 20
		HeatExchanger3.energy_consumption = "5.4MW"
		HeatExchanger3.minable = {hardness = 0.2, mining_time = 0.5, result = "tsp-basic-heat-exchanger3"}
		HeatExchanger3.fast_replaceable_group = "boiler"
		HeatExchanger3.next_upgrade = "tsp-basic-heat-exchanger4"

		local HeatExchanger4 = table.deepcopy(data.raw.boiler["heat-exchanger"])
		HeatExchanger4.name = "tsp-basic-heat-exchanger4"
		HeatExchanger4.icon = "__thermal-solar-power__/graphics/icons/heat-boiler4.png"
		HeatExchanger4.icon_size = 32
		HeatExchanger4.target_temperature = 615.0
		HeatExchanger4.energy_source.min_working_temperature = 615.0
		HeatExchanger4.energy_source.min_temperature_gradient = 1
		HeatExchanger4.energy_source.max_temperature = 745.0
		HeatExchanger4.energy_source.specific_heat = "160KJ"
		HeatExchanger4.energy_source.max_transfer = "9600kW"
		HeatExchanger4.output_fluid_box.base_area = 25
		HeatExchanger4.energy_consumption = "7.2MW"
		HeatExchanger4.minable = {hardness = 0.2, mining_time = 0.5, result = "tsp-basic-heat-exchanger4"}
		HeatExchanger4.fast_replaceable_group = "boiler"
		HeatExchanger4.next_upgrade = ""

		data:extend({HeatExchanger2,HeatExchanger3,HeatExchanger4})
	else
		HeatExchanger.next_upgrade = "heat-exchanger"
	end

	data:extend({HeatExchanger})
end

------------------------------------------------------

local HeatPipe = table.deepcopy(data.raw["heat-pipe"]["heat-pipe"])
HeatPipe.name = "tsp-basic-heat-pipe"
HeatPipe.heat_buffer.specific_heat = "500KJ"
HeatPipe.max_transfer = "500MW"
HeatPipe.minable.result = "tsp-basic-heat-pipe"

data:extend({HeatPipe})

-----------------------------------

local pond = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
pond.name = "tsp-salt-evaporation-pond"
pond.minable = {mining_time = 1, result = "tsp-salt-evaporation-pond"}

pond.energy_usage = "200KW"
pond.crafting_speed = 30
pond.icon = "__thermal-solar-power__/graphics/icons/evaporation-pond.png"
pond.icon_size = 32

pond.result_inventory_size = 1
pond.source_inventory_size = 0
pond.fast_replaceable_group = ""
pond.crafting_categories = {"tsp-evaporation"}
pond.fixed_recipe = "tsp-molten-salt2"
pond.next_upgrade = ""

pond.working_visualisations = nil

pond.energy_source = {
	type = "heat",
	render_no_power_icon = false,
	render_no_network_icon = false,
	max_temperature = 100,
	min_working_temperature = 40.0,
	specific_heat = "100KJ",
	max_transfer = "300KW",
	connections = {
        {
          position = {0, 1},
          direction = defines.direction.south
        },
        {
          position = {-1, 0},
          direction = defines.direction.west
        },
        {
          position = {1, 0},
          direction = defines.direction.east
        },
    },
}

pond.fluid_boxes =
{
	{
		production_type = "input",
		base_area = 10,
		height = 2,
		base_level = -1,
		pipe_connections ={{type = "input-output", position = {0, -2}}},
	}
}


pond.animation = 
{	
	filename = "__thermal-solar-power__/graphics/entity/evaporation-pond.png",
	frame_count = 1,
	height = 100,
	width = 140,
	priority = "high",
	scale = 0.9,
	shift = {0.35,-0.3}
}


data:extend({pond})

---------------------------------

if settings.startup["steam-turbines-enabled"].value and not mods["bobpower"] then

	local engine2 = table.deepcopy(data.raw.generator["steam-engine"])
	engine2.name = "tsp-steam-engine-2"
	engine2.minable.result = "tsp-steam-engine-2"
	engine2.fluid_usage_per_tick = 0.65
	engine2.maximum_temperature = 315

	local engine3 = table.deepcopy(data.raw.generator["steam-engine"])
	engine3.name = "tsp-steam-engine-3"
	engine3.minable.result = "tsp-steam-engine-3"
	engine3.fluid_usage_per_tick = 0.8
	engine3.maximum_temperature = 465

	local engine4 = table.deepcopy(data.raw.generator["steam-engine"])
	engine4.name = "tsp-steam-engine-4"
	engine4.minable.result = "tsp-steam-engine-4"
	engine4.fluid_usage_per_tick = 0.875
	engine4.maximum_temperature = 615

	data:extend({engine2,engine3,engine4})

end

for _,name in pairs({
	"tsp-basic-heat-exchanger",
	"tsp-basic-heat-exchanger2",
	"tsp-basic-heat-exchanger3",
	"tsp-basic-heat-exchanger4",
}) do
	if data.raw.boiler[name] then
		data.raw.boiler[name].localised_description = { "item-description."..name, data.raw.boiler[name].target_temperature }
	end
end
