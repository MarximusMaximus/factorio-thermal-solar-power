-- NOT DISABLEABLE
-- ON 0.17 ALL FLAGS, GOES TO INVENTORY AND GOES TO QUICKBAR WAS REMOVED IN PORTING

data:extend({	
	{
		type = "item",
		name = "tsp-basic-heat-pipe",
		icon = "__base__/graphics/icons/heat-pipe.png",
		icon_size = 64,
		subgroup = "energy",
		order = "f[nuclear-energy]-c[heat-pipe]",
		place_result = "tsp-basic-heat-pipe",
		stack_size = 50,
	},
	
	{
		type = "item",
		name = "tsp-recycler",
		icon = "__base__/graphics/icons/electric-furnace.png",
		icon_size = 64,
		subgroup = "smelting-machine",
		order = "gg",
		place_result = "tsp-recycler",
		stack_size = 10,
	},
		
	{
		type = "item",
		name = "tsp-molten-salt",
		icon = "__thermal-solar-power__/graphics/icons/salt.png",
		icon_size = 32,
		subgroup = "raw-material",
		stack_size = 200
	},

	{
		type = "item",
		name = "tsp-molten-salt-heat-accumulator",
		icon = "__thermal-solar-power__/graphics/icons/heat-accumulator1.png",
		icon_size = 32,
		subgroup = "energy",
		place_result = "tsp-molten-salt-heat-accumulator",
		stack_size = 20
	},

	{
		type = "item",
		name = "tsp-molten-salt-heat-accumulator2",
		icon = "__thermal-solar-power__/graphics/icons/heat-accumulator2.png",
		icon_size = 32,
		subgroup = "energy",
		place_result = "tsp-molten-salt-heat-accumulator2",
		stack_size = 20
	},
	{
		type = "item",
		name = "tsp-molten-salt-heat-accumulator3",
		icon = "__thermal-solar-power__/graphics/icons/heat-accumulator3.png",
		icon_size = 32,
		subgroup = "energy",
		place_result = "tsp-molten-salt-heat-accumulator3",
		stack_size = 20
	},

	{
		type = "item",
		name = "tsp-salt-evaporation-pond",
		icon = "__thermal-solar-power__/graphics/icons/evaporation-pond.png",
		icon_size = 32,
		subgroup = "production-machine",
		place_result = "tsp-salt-evaporation-pond",
		stack_size = 20
	},
	
	{
		type = "item",
		name = "tsp-thermal-solar-panel",
		icon = "__thermal-solar-power__/graphics/icons/solar-panel1.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "tsp-thermal-solar-panel",
		stack_size = 20
	},

	{
		type = "item",
		name = "tsp-thermal-solar-panel2",
		icon = "__thermal-solar-power__/graphics/icons/solar-panel2.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "tsp-thermal-solar-panel2",
		stack_size = 20
	},

	{
		type = "item",
		name = "tsp-thermal-solar-panel3",
		icon = "__thermal-solar-power__/graphics/icons/solar-panel3.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "tsp-thermal-solar-panel3",
		stack_size = 20
	},

	{
		type = "item",
		name = "tsp-thermal-solar-panel4",
		icon = "__thermal-solar-power__/graphics/icons/solar-panel4.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "tsp-thermal-solar-panel4",
		stack_size = 20
	},
	
	{
		type = "item",
		name = "tsp-molten-salt-heat-accumulator",
		icon = "__thermal-solar-power__/graphics/icons/heat-accumulator1.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "tsp-molten-salt-heat-accumulator",
		stack_size = 20
	},

	{
		type = "item",
		name = "tsp-molten-salt-heat-accumulator2",
		icon = "__thermal-solar-power__/graphics/icons/heat-accumulator2.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "tsp-molten-salt-heat-accumulator2",
		stack_size = 20
	},
	{
		type = "item",
		name = "tsp-molten-salt-heat-accumulator3",
		icon = "__thermal-solar-power__/graphics/icons/heat-accumulator3.png",
		icon_size = 32,		
		subgroup = "energy",
		place_result = "tsp-molten-salt-heat-accumulator3",
		stack_size = 20
	},
})

-- ALL HEAT EXCHANGER
if settings.startup["heat-exchanger-enabled"].value then
	data:extend({
	{
			type = "item",
			name = "tsp-basic-heat-exchanger",
			icon = "__thermal-solar-power__/graphics/icons/heat-boiler1.png",
			icon_size = 32,			
			subgroup = "energy",
			order = "f",
			place_result = "tsp-basic-heat-exchanger",
			stack_size = 20,
		},
		{
			type = "item",
			name = "tsp-basic-heat-exchanger2",
			icon = "__thermal-solar-power__/graphics/icons/heat-boiler2.png",
			icon_size = 32,			
			subgroup = "energy",
			order = "f",
			place_result = "tsp-basic-heat-exchanger2",
			stack_size = 20,
		},
	})

	if not mods["bobpower"] then
		data:extend({
			{
				type = "item",
				name = "tsp-basic-heat-exchanger3",
				icon = "__thermal-solar-power__/graphics/icons/heat-boiler3.png",
				icon_size = 32,			
				subgroup = "energy",
				order = "f",
				place_result = "tsp-basic-heat-exchanger3",
				stack_size = 20,
			},
			{
				type = "item",
				name = "tsp-basic-heat-exchanger4",
				icon = "__thermal-solar-power__/graphics/icons/heat-boiler4.png",
				icon_size = 32,			
				subgroup = "energy",
				order = "f",
				place_result = "tsp-basic-heat-exchanger4",
				stack_size = 20,
			}
		})
	end
end

-- ALL STEAM TURBINES
if settings.startup["steam-turbines-enabled"].value and not mods["bobpower"] then
	data:extend({
		{
			type = "item",
			name = "tsp-steam-engine-2",
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 64,			
			subgroup = "energy",
			order = "c1",
			place_result = "tsp-steam-engine-2",
			stack_size = 10
		},
		
		{
			type = "item",
			name = "tsp-steam-engine-3",
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 64,			
			subgroup = "energy",
			order = "c2",
			place_result = "tsp-steam-engine-3",
			stack_size = 10
		},

		{
			type = "item",
			name = "tsp-steam-engine-4",
			icon = "__base__/graphics/icons/steam-engine.png",
			icon_size = 64,			
			subgroup = "energy",
			order = "c3",
			place_result = "tsp-steam-engine-4",
			stack_size = 10
		}
	})
end
