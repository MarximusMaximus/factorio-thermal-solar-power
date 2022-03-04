-- NOT DISABLEABLE
data:extend({
	
	{
		type = "recipe-category",
		name = "tsp-evaporation"
	},
	{
		type = "recipe-category",
		name = "tsp-recycle-solar-items"
	},

	{
		type = "recipe",
		name = "tsp-molten-salt",
		enabled = false,
		category = "crafting-with-fluid",
		energy_required = 20,
		ingredients = {{type="fluid", name="water", amount=25}},
		result = "tsp-molten-salt"
	},

	{
		type = "recipe",
		name = "tsp-molten-salt2",
		enabled = false,
		emissions_multiplier = 0,
		category = "tsp-evaporation",
		energy_required = 20,
		ingredients = {{type = "fluid", name = "water", amount = 25}},
		hidden = true,
		results = {{type = "item" , name = "tsp-molten-salt", amount = 1}}

	},

	{
		type = "recipe",
		name = "tsp-recycler",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{"iron-plate", 10}, 
			{"iron-gear-wheel", 10},
			{"electronic-circuit",5},
		},
		result = "tsp-recycler",
	},

	{
		type = "recipe",
		name = "tsp-basic-heat-pipe",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{"iron-plate", 3}, 
			{"copper-plate", 3}
		},
		result = "tsp-basic-heat-pipe",
	},
	{
		type = "recipe",
		name = "tsp-recycle-basic-heat-pipe",
		icon = "__base__/graphics/icons/heat-pipe.png",
		icon_size = 64,		
		subgroup = "energy",
		enabled = true,
		hidden = true,
		category = "tsp-recycle-solar-items",
		energy_required = 1,
		ingredients = {{"tsp-basic-heat-pipe",1}},
		
		results = {
			{"iron-plate", 3}, 
			{"copper-plate", 3}
		},
	},	
	
	{
		type = "recipe",
		name = "tsp-molten-salt-heat-accumulator",
		enabled = false,
		energy_required = 5,
		ingredients = {{"steel-plate", 5}, {"tsp-basic-heat-pipe", 4}, {"tsp-molten-salt",20}},
		result = "tsp-molten-salt-heat-accumulator"
	},

	{
		type = "recipe",
		name = "tsp-recycle-Heat-Accumulator",
		enabled = true,
		icon = "__thermal-solar-power__/graphics/icons/heat-accumulator1.png",
		icon_size = 32,
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "tsp-recycle-solar-items",
		ingredients =  {{"tsp-molten-salt-heat-accumulator",1}},
		results = {{"steel-plate", 5}, {"iron-plate", 12},{"copper-plate", 12}}
	},
	
	{
		type = "recipe",
		name = "tsp-molten-salt-heat-accumulator2",
		enabled = false,
		energy_required = 5,
		ingredients = {{"tsp-molten-salt-heat-accumulator", 2},{"steel-plate",6},{"heat-pipe",2},{"tsp-molten-salt",40}},
		result = "tsp-molten-salt-heat-accumulator2"
	},

	{
		type = "recipe",
		name = "tsp-recycle-Heat-Accumulator2",
		enabled = true,
		icon = "__thermal-solar-power__/graphics/icons/heat-accumulator2.png",
		icon_size = 32,
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "tsp-recycle-solar-items",
		ingredients =  {{"tsp-molten-salt-heat-accumulator2",1}},
		results = {{"steel-plate", 36}, {"iron-plate", 24},{"copper-plate", 64},}
	},
	
	{
		type = "recipe",
		name = "tsp-molten-salt-heat-accumulator3",
		enabled = false,
		energy_required = 5,
		ingredients = {{"tsp-molten-salt-heat-accumulator2", 2},{"steel-plate",10},{"heat-pipe",2},{"tsp-molten-salt",60}},
		result = "tsp-molten-salt-heat-accumulator3"
	},

	{
		type = "recipe",
		name = "tsp-recycle-Heat-Accumulator3",
		enabled = true,
		icon = "__thermal-solar-power__/graphics/icons/heat-accumulator3.png",
		icon_size = 32,
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "tsp-recycle-solar-items",
		ingredients =  {{"tsp-molten-salt-heat-accumulator3",1}},
		results = {{"steel-plate", 102}, {"iron-plate", 48},{"copper-plate", 168},}
	},
	
	{
		type = "recipe",
		name = "tsp-salt-evaporation-pond",
		enabled = false,
		energy_required = 5,
		ingredients = {{"iron-plate", 10}, {"copper-plate", 10}, {"pipe",5}},
		result = "tsp-salt-evaporation-pond"
	},
	
	{
		type = "recipe",
		name = "tsp-thermal-solar-panel",
		enabled = false,
		energy_required = 5,
		ingredients = {{"iron-plate", 4}, {"copper-plate", 10}, {"tsp-basic-heat-pipe",4}},
		result = "tsp-thermal-solar-panel"
	},
	
	{
		type = "recipe",
		name = "tsp-thermal-solar-panel2",
		enabled = false,
		energy_required = 7,
		ingredients = {{"steel-plate", 2}, {"tsp-thermal-solar-panel", 1}, {"electronic-circuit",2},{"tsp-molten-salt",15}},
		result = "tsp-thermal-solar-panel2"
	},
	{
		type = "recipe",
		name = "tsp-thermal-solar-panel3",
		enabled = false,
		energy_required = 7,
		ingredients = {{"steel-plate", 4}, {"tsp-thermal-solar-panel2", 1},{"tsp-molten-salt",30}},
		result = "tsp-thermal-solar-panel3"
	},
	{
		type = "recipe",
		name = "tsp-thermal-solar-panel4",
		enabled = false,
		energy_required = 7,
		ingredients = {{"steel-plate", 6}, {"tsp-thermal-solar-panel3", 1},{"tsp-molten-salt",40}},
		result = "tsp-thermal-solar-panel4"
	},
	
	{
		type = "recipe",
		name = "tsp-recycle-solar-panel",
		icon = "__thermal-solar-power__/graphics/icons/solar-panel1.png",
		icon_size = 32,		
		subgroup = "energy",
		enabled = true,
		hidden = true,
		category = "tsp-recycle-solar-items",
		energy_required = 1,
		ingredients = {{"tsp-thermal-solar-panel", 1}},
		results = {{"iron-plate", 16}, {"copper-plate", 22},},
	},
	
	{
		type = "recipe",
		name = "tsp-recycle-solar-panel2",
		icon = "__thermal-solar-power__/graphics/icons/solar-panel2.png",
		icon_size = 32,		
		subgroup = "energy",
		enabled = true,
		hidden = true,
		category = "tsp-recycle-solar-items",
		energy_required = 1,
		ingredients = {{"tsp-thermal-solar-panel2", 1}},
		results = {{"steel-plate", 2},{"electronic-circuit",2},{"iron-plate", 16}, {"copper-plate", 22},},
	},
	
	{
		type = "recipe",
		name = "tsp-recycle-solar-panel3",
		enabled = true,
		icon = "__thermal-solar-power__/graphics/icons/solar-panel3.png",
		icon_size = 32,		
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "tsp-recycle-solar-items",
		ingredients = {{"tsp-thermal-solar-panel3", 1}},
		results = {{"steel-plate", 6},{"electronic-circuit",2},{"iron-plate", 16}, {"copper-plate", 22},},
	},

	{
		type = "recipe",
		name = "tsp-recycle-solar-panel4",
		enabled = true,
		icon = "__thermal-solar-power__/graphics/icons/solar-panel4.png",
		icon_size = 32,		
		subgroup = "energy",
		energy_required = 1,
		hidden = true,
		category = "tsp-recycle-solar-items",
		ingredients = {{"tsp-thermal-solar-panel4", 1}},
		results = {{"steel-plate", 12},{"electronic-circuit",2},{"iron-plate", 16}, {"copper-plate", 22},},
	},
	
	
})


-- ALL HEAT EXCHANGER
if settings.startup["heat-exchanger-enabled"].value then
	data:extend({
		{
			type = "recipe",
			name = "tsp-basic-heat-exchanger",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"iron-plate", 20}, 
				{"copper-plate", 50}, 
				{"pipe",10}
			},
			result = "tsp-basic-heat-exchanger",
		},
		{
			type = "recipe",
			name = "tsp-recycle-heat-exchanger",
			enabled = true,
			icon = "__thermal-solar-power__/graphics/icons/heat-boiler1.png",
			icon_size = 32,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "tsp-recycle-solar-items",
			ingredients = {{"tsp-basic-heat-exchanger", 1}},
			results = {{"iron-plate", 20}, {"copper-plate", 50},{"pipe",10},},
		},
	})

	if not mods["bobpower"] then
		data:extend({
			{
				type = "recipe",
				name = "tsp-basic-heat-exchanger2",
				enabled = false,
				energy_required = 5,
				ingredients =
				{
					{"tsp-basic-heat-exchanger", 1}, 
					{"steel-plate",10}		
				},
				result = "tsp-basic-heat-exchanger2",
			},
			{
				type = "recipe",
				name = "tsp-recycle-heat-exchanger2",
				enabled = true,
				icon = "__thermal-solar-power__/graphics/icons/heat-boiler2.png",
				icon_size = 32,		
				subgroup = "energy",
				energy_required = 1,
				hidden = true,
				category = "tsp-recycle-solar-items",
				ingredients = {{"tsp-basic-heat-exchanger2", 1}},
				results = {{"steel-plate",10},{"iron-plate", 20}, {"copper-plate", 50},{"pipe",10},},
			},
			{
				type = "recipe",
				name = "tsp-basic-heat-exchanger3",
				enabled = false,
				energy_required = 5,
				ingredients =
				{
					{"tsp-basic-heat-exchanger2", 1}, 
					{"steel-plate",10}
				},
				result = "tsp-basic-heat-exchanger3",
			},
			{
				type = "recipe",
				name = "tsp-recycle-heat-exchanger3",
				enabled = true,
				icon = "__thermal-solar-power__/graphics/icons/heat-boiler3.png",
				icon_size = 32,		
				subgroup = "energy",
				energy_required = 1,
				hidden = true,
				category = "tsp-recycle-solar-items",
				ingredients = {{"tsp-basic-heat-exchanger3", 1}},
				results = {{"steel-plate",20},{"iron-plate", 20}, {"copper-plate", 50},{"pipe",10},},
			},
			{
				type = "recipe",
				name = "tsp-basic-heat-exchanger4",
				enabled = false,
				energy_required = 5,
				ingredients =
				{
					{"tsp-basic-heat-exchanger3", 1}, 
					{"plastic-bar",10}
				},
				result = "tsp-basic-heat-exchanger4",
			},
			{
				type = "recipe",
				name = "tsp-recycle-heat-exchanger4",
				enabled = true,
				icon = "__thermal-solar-power__/graphics/icons/heat-boiler4.png",
				icon_size = 32,		
				subgroup = "energy",
				energy_required = 1,
				hidden = true,
				category = "tsp-recycle-solar-items",
				ingredients = {{"tsp-basic-heat-exchanger4", 1}},
				results = {{"plastic-bar",10},{"steel-plate",20},{"iron-plate", 20}, {"copper-plate", 50},{"pipe",10},},
			},
		})
	end
end

-- ALL STEAM TURBINES
if settings.startup["steam-turbines-enabled"].value and not mods["bobpower"] then
	data:extend({
		{
			type = "recipe",
			name = "tsp-steam-engine-2",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"steam-engine", 1}, 
				{"pipe",5},
				{"steel-plate",10}
			},
			result = "tsp-steam-engine-2",
		},
		{
			type = "recipe",
			name = "tsp-recycle-steam-engine-2",
			enabled = true,
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 64,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "tsp-recycle-solar-items",
			ingredients = {{"tsp-steam-engine-2", 1}},
			results = {{"steel-plate",10},{"pipe",5},{"iron-plate",10},{"iron-gear-wheel",8}},
		},		
		{
			type = "recipe",
			name = "tsp-steam-engine-3",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"tsp-steam-engine-2", 1}, 
				{"electronic-circuit",1},
				{"steel-plate",10}		
			},
			result = "tsp-steam-engine-3",
		},
		{
			type = "recipe",
			name = "tsp-recycle-steam-engine-3",
			enabled = true,
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 64,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "tsp-recycle-solar-items",
			ingredients = {{"tsp-steam-engine-3", 1}},
			results = {{"steel-plate",20},{"electronic-circuit",1},{"pipe",5},{"iron-plate",10},{"iron-gear-wheel",8}},
		},
		{
			type = "recipe",
			name = "tsp-steam-engine-4",
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"tsp-steam-engine-3", 1}, 
				{"electronic-circuit",1},
				{"steel-plate",10}		
			},
			result = "tsp-steam-engine-4",
		},
		{
			type = "recipe",
			name = "tsp-recycle-steam-engine-4",
			enabled = true,
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 64,		
			subgroup = "energy",
			energy_required = 1,
			hidden = true,
			category = "tsp-recycle-solar-items",
			ingredients = {{"tsp-steam-engine-4", 1}},
			results = {{"steel-plate",30},{"electronic-circuit",2},{"pipe",5},{"iron-plate",10},{"iron-gear-wheel",8}},
		},
	})
end






















