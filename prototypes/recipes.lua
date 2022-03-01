-- NOT DISABLEABLE
data:extend({
	
	{
		type = "recipe-category",
		name = "CW-evaporation"
	},
	{
		type = "recipe-category",
		name = "CW-recycle-solar-items"
	},

	{
		type = "recipe",
		name = "CW-molten-salt",
		enabled = false,
		category = "crafting-with-fluid",
		energy_required = 20,
		ingredients = {{type="fluid", name="water", amount=25}},
		result = "CW-molten-salt"
	},

	{
		type = "recipe",
		name = "CW-molten-salt2",
		enabled = false,
		emissions_multiplier = 0,
		category = "CW-evaporation",
		energy_required = 20,
		ingredients = {{type = "fluid", name = "water", amount = 25}},
		hidden = true,
		results = {{type = "item" , name = "CW-molten-salt", amount = 1}}

	},

	{
		type = "recipe",
		name = "CW-recycler",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{"iron-plate", 10}, 
			{"iron-gear-wheel", 10},
			{"electronic-circuit",5},
		},
		result = "CW-recycler",
	},

	{
		type = "recipe",
		name = "CW-basic-heat-pipe",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{"iron-plate", 3}, 
			{"copper-plate", 3}
		},
		result = "CW-basic-heat-pipe",
	},
	{
		type = "recipe",
		name = "CW-recycle-basic-heat-pipe",
		icon = "__base__/graphics/icons/heat-pipe.png",
		icon_size = 64,		
		subgroup = "energy",
		enabled = true,
		hidden = true,
		category = "CW-recycle-solar-items",
		energy_required = 1,
		ingredients = {{"CW-basic-heat-pipe",1}},
		
		results = {
			{"iron-plate", 3}, 
			{"copper-plate", 3}
		},
	},	
	
	{
		type = "recipe",
		name = "CW-molten-salt-Heat-Accumulator",
		enabled = false,
		energy_required = 5,
		ingredients = {{"steel-plate", 5}, {"CW-basic-heat-pipe", 4}, {"CW-molten-salt",20}},
		result = "CW-molten-salt-Heat-Accumulator"
	},

	{
		type = "recipe",
		name = "CW-recycle-Heat-Accumulator",
		enabled = true,
		icon = "__CW-thermal-solar-power__/graphics/icons/heat-accumulator1.png",
		icon_size = 32,
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "CW-recycle-solar-items",
		ingredients =  {{"CW-molten-salt-Heat-Accumulator",1}},
		results = {{"steel-plate", 5}, {"iron-plate", 12},{"copper-plate", 12}}
	},
	
	{
		type = "recipe",
		name = "CW-molten-salt-Heat-Accumulator2",
		enabled = false,
		energy_required = 5,
		ingredients = {{"CW-molten-salt-Heat-Accumulator", 2},{"steel-plate",6},{"heat-pipe",2},{"CW-molten-salt",40}},
		result = "CW-molten-salt-Heat-Accumulator2"
	},

	{
		type = "recipe",
		name = "CW-recycle-Heat-Accumulator2",
		enabled = true,
		icon = "__CW-thermal-solar-power__/graphics/icons/heat-accumulator2.png",
		icon_size = 32,
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "CW-recycle-solar-items",
		ingredients =  {{"CW-molten-salt-Heat-Accumulator2",1}},
		results = {{"steel-plate", 36}, {"iron-plate", 24},{"copper-plate", 64},}
	},
	
	{
		type = "recipe",
		name = "CW-molten-salt-Heat-Accumulator3",
		enabled = false,
		energy_required = 5,
		ingredients = {{"CW-molten-salt-Heat-Accumulator2", 2},{"steel-plate",10},{"heat-pipe",2},{"CW-molten-salt",60}},
		result = "CW-molten-salt-Heat-Accumulator3"
	},

	{
		type = "recipe",
		name = "CW-recycle-Heat-Accumulator3",
		enabled = true,
		icon = "__CW-thermal-solar-power__/graphics/icons/heat-accumulator3.png",
		icon_size = 32,
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "CW-recycle-solar-items",
		ingredients =  {{"CW-molten-salt-Heat-Accumulator3",1}},
		results = {{"steel-plate", 102}, {"iron-plate", 48},{"copper-plate", 168},}
	},
	
	{
		type = "recipe",
		name = "CW-salt-evaporation-pond",
		enabled = false,
		energy_required = 5,
		ingredients = {{"iron-plate", 10}, {"copper-plate", 10}, {"pipe",5}},
		result = "CW-salt-evaporation-pond"
	},
	
	{
		type = "recipe",
		name = "CW-thermal-solar-panel",
		enabled = false,
		energy_required = 5,
		ingredients = {{"iron-plate", 4}, {"copper-plate", 10}, {"CW-basic-heat-pipe",4}},
		result = "CW-thermal-solar-panel"
	},
	
	{
		type = "recipe",
		name = "CW-thermal-solar-panel2",
		enabled = false,
		energy_required = 7,
		ingredients = {{"steel-plate", 2}, {"CW-thermal-solar-panel", 1}, {"electronic-circuit",2},{"CW-molten-salt",15}},
		result = "CW-thermal-solar-panel2"
	},
	{
		type = "recipe",
		name = "CW-thermal-solar-panel3",
		enabled = false,
		energy_required = 7,
		ingredients = {{"steel-plate", 4}, {"CW-thermal-solar-panel2", 1},{"CW-molten-salt",30}},
		result = "CW-thermal-solar-panel3"
	},
	{
		type = "recipe",
		name = "CW-thermal-solar-panel4",
		enabled = false,
		energy_required = 7,
		ingredients = {{"steel-plate", 6}, {"CW-thermal-solar-panel3", 1},{"CW-molten-salt",40}},
		result = "CW-thermal-solar-panel4"
	},
	
	{
		type = "recipe",
		name = "CW-recycle-solar-panel",
		icon = "__CW-thermal-solar-power__/graphics/icons/solar-panel1.png",
		icon_size = 32,		
		subgroup = "energy",
		enabled = true,
		hidden = true,
		category = "CW-recycle-solar-items",
		energy_required = 1,
		ingredients = {{"CW-thermal-solar-panel", 1}},
		results = {{"iron-plate", 16}, {"copper-plate", 22},},
	},
	
	{
		type = "recipe",
		name = "CW-recycle-solar-panel2",
		icon = "__CW-thermal-solar-power__/graphics/icons/solar-panel2.png",
		icon_size = 32,		
		subgroup = "energy",
		enabled = true,
		hidden = true,
		category = "CW-recycle-solar-items",
		energy_required = 1,
		ingredients = {{"CW-thermal-solar-panel2", 1}},
		results = {{"steel-plate", 2},{"electronic-circuit",2},{"iron-plate", 16}, {"copper-plate", 22},},
	},
	
	{
		type = "recipe",
		name = "CW-recycle-solar-panel3",
		enabled = true,
		icon = "__CW-thermal-solar-power__/graphics/icons/solar-panel3.png",
		icon_size = 32,		
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "CW-recycle-solar-items",
		ingredients = {{"CW-thermal-solar-panel3", 1}},
		results = {{"steel-plate", 6},{"electronic-circuit",2},{"iron-plate", 16}, {"copper-plate", 22},},
	},

	{
		type = "recipe",
		name = "CW-recycle-solar-panel4",
		enabled = true,
		icon = "__CW-thermal-solar-power__/graphics/icons/solar-panel4.png",
		icon_size = 32,		
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "CW-recycle-solar-items",
		ingredients = {{"CW-thermal-solar-panel4", 1}},
		results = {{"steel-plate", 12},{"electronic-circuit",2},{"iron-plate", 16}, {"copper-plate", 22},},
	},
	
	
})


-- ALL HEAT EXCHANGER
if settings.startup["heat-exchanger-enabled"].value then
	data:extend({
		{
			type = "recipe",
			name = "CW-basic-heat-exchanger",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"iron-plate", 20}, 
				{"copper-plate", 50}, 
				{"pipe",10}
			},
			result = "CW-basic-heat-exchanger",
		},
		{
			type = "recipe",
			name = "CW-recycle-heat-exchanger",
			enabled = true,
			icon = "__CW-thermal-solar-power__/graphics/icons/heat-boiler1.png",
			icon_size = 32,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "CW-recycle-solar-items",
			ingredients = {{"CW-basic-heat-exchanger", 1}},
			results = {{"iron-plate", 20}, {"copper-plate", 50},{"pipe",10},},
		},
		{
			type = "recipe",
			name = "CW-basic-heat-exchanger2",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-basic-heat-exchanger", 1}, 
				{"steel-plate",10}		
			},
			result = "CW-basic-heat-exchanger2",
		},
		{
			type = "recipe",
			name = "CW-recycle-heat-exchanger2",
			enabled = true,
			icon = "__CW-thermal-solar-power__/graphics/icons/heat-boiler2.png",
			icon_size = 32,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "CW-recycle-solar-items",
			ingredients = {{"CW-basic-heat-exchanger2", 1}},
			results = {{"steel-plate",10},{"iron-plate", 20}, {"copper-plate", 50},{"pipe",10},},
		},		{
			type = "recipe",
			name = "CW-basic-heat-exchanger3",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-basic-heat-exchanger2", 1}, 
				{"steel-plate",10}
			},
			result = "CW-basic-heat-exchanger3",
		},
		{
			type = "recipe",
			name = "CW-recycle-heat-exchanger3",
			enabled = true,
			icon = "__CW-thermal-solar-power__/graphics/icons/heat-boiler3.png",
			icon_size = 32,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "CW-recycle-solar-items",
			ingredients = {{"CW-basic-heat-exchanger3", 1}},
			results = {{"steel-plate",20},{"iron-plate", 20}, {"copper-plate", 50},{"pipe",10},},
		},
		
		{
			type = "recipe",
			name = "CW-basic-heat-exchanger4",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-basic-heat-exchanger3", 1}, 
				{"plastic-bar",10}
			},
			result = "CW-basic-heat-exchanger4",
		},

		{
			type = "recipe",
			name = "CW-recycle-heat-exchanger4",
			enabled = true,
			icon = "__CW-thermal-solar-power__/graphics/icons/heat-boiler4.png",
			icon_size = 32,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "CW-recycle-solar-items",
			ingredients = {{"CW-basic-heat-exchanger4", 1}},
			results = {{"plastic-bar",10},{"steel-plate",20},{"iron-plate", 20}, {"copper-plate", 50},{"pipe",10},},
		},
		
	})
end

-- ALL STEAM TURBINES
if settings.startup["steam-turbines-enabled"].value then
	data:extend({
		{
			type = "recipe",
			name = "CW-steam-engine-2",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"steam-engine", 1}, 
				{"pipe",5},
				{"steel-plate",10}
			},
			result = "CW-steam-engine-2",
		},
		{
			type = "recipe",
			name = "CW-recycle-steam-engine-2",
			enabled = true,
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 64,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "CW-recycle-solar-items",
			ingredients = {{"CW-steam-engine-2", 1}},
			results = {{"steel-plate",10},{"pipe",5},{"iron-plate",10},{"iron-gear-wheel",8}},
		},		
		{
			type = "recipe",
			name = "CW-steam-engine-3",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-steam-engine-2", 1}, 
				{"electronic-circuit",1},
				{"steel-plate",10}		
			},
			result = "CW-steam-engine-3",
		},
		{
			type = "recipe",
			name = "CW-recycle-steam-engine-3",
			enabled = true,
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 64,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "CW-recycle-solar-items",
			ingredients = {{"CW-steam-engine-3", 1}},
			results = {{"steel-plate",20},{"electronic-circuit",1},{"pipe",5},{"iron-plate",10},{"iron-gear-wheel",8}},
		},
		{
			type = "recipe",
			name = "CW-steam-engine-4",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"CW-steam-engine-3", 1}, 
				{"electronic-circuit",1},
				{"steel-plate",10}		
			},
			result = "CW-steam-engine-4",
		},
		{
			type = "recipe",
			name = "CW-recycle-steam-engine-4",
			enabled = true,
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 64,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "CW-recycle-solar-items",
			ingredients = {{"CW-steam-engine-4", 1}},
			results = {{"steel-plate",30},{"electronic-circuit",2},{"pipe",5},{"iron-plate",10},{"iron-gear-wheel",8}},
		},
	})
end






















