------------------------------------------
-- THERMALSOLARPOWERTEC1

temp_effect = {
	{
		type = "unlock-recipe",
		recipe = "tsp-basic-heat-pipe",
	},
	{
		type = "unlock-recipe",
		recipe = "tsp-thermal-solar-panel",
	},
	{
		type = "unlock-recipe",
		recipe = "tsp-salt-evaporation-pond",
	},
	{
		type = "unlock-recipe",
		recipe = "tsp-molten-salt",
	},
	{
		type = "unlock-recipe",
		recipe = "tsp-molten-salt2",
	},

}

if settings.startup["heat-exchanger-enabled"].value then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "tsp-basic-heat-exchanger",
	})
end

ThermalSolarPowerTec1 =	{
	type = "technology",
	name = "tsp-thermal-solar-power",
	icon_size = 128,
	icon = "__thermal-solar-power__/graphics/tech/solar-energy.png",
	effects = temp_effect,

	prerequisites = {"optics"},
	unit = 
	{
		count = 30,
		ingredients =
		{
			{"automation-science-pack", 1},				
		},
		time = 20,
	}
}
	
------------------------------------------
-- THERMALSOLARPOWERTEC2

temp_effect = {
	{
		type = "unlock-recipe",
		recipe = "tsp-molten-salt-heat-accumulator",
	},
	{
		type = "unlock-recipe",
		recipe = "heat-pipe",
	},
	{
		type = "unlock-recipe",
		recipe = "tsp-thermal-solar-panel2",
	},
	{
		type = "unlock-recipe",
		recipe = "tsp-recycler",
	},
}

if settings.startup["heat-exchanger-enabled"].value and not mods["bobpower"] then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "tsp-basic-heat-exchanger2"
	})
end

if settings.startup["steam-turbines-enabled"].value and not mods["bobpower"] then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "tsp-steam-engine-2"
	})
end

ThermalSolarPowerTec2 =	{
	type = "technology",
	name = "tsp-thermal-solar-power-2",
	icon_size = 128,
	icon = "__thermal-solar-power__/graphics/tech/solar-energy.png",
	upgrade = true,
	effects = temp_effect,
	prerequisites = {"tsp-thermal-solar-power","steel-processing"},
	unit = 
	{
		count = 50,
		ingredients ={{"automation-science-pack", 1},},
		time = 25,
	}
}
	
------------------------------------------------------
-- THERMALSOLARPOWERTEC3
	
temp_effect = {
	{
		type = "unlock-recipe",
		recipe = "tsp-molten-salt-heat-accumulator2",
	},
	{
		type = "unlock-recipe",
		recipe = "tsp-thermal-solar-panel3",
	},

}
	
if settings.startup["heat-exchanger-enabled"].value and not mods["bobpower"] then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "tsp-basic-heat-exchanger3"
	})
end

if settings.startup["steam-turbines-enabled"].value and not mods["bobpower"] then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "tsp-steam-engine-3"
	})
end
	
ThermalSolarPowerTec3 = {
	type = "technology",
	name = "tsp-thermal-solar-power-3",
	icon_size = 128,
	icon = "__thermal-solar-power__/graphics/tech/solar-energy.png",
	upgrade = true,
	effects = temp_effect,
	prerequisites = {"tsp-thermal-solar-power-2"},
	unit = 
	{
		count = 80,
		ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1},},
		time = 30,
	}
}
	
--------------------------------------------------------
-- THERMALSOLARPOWERTEC4
	
temp_effect = {
	{
		type = "unlock-recipe",
		recipe = "tsp-molten-salt-heat-accumulator3",
	},
	{
		type = "unlock-recipe",
		recipe = "tsp-thermal-solar-panel4",
	},

}

if settings.startup["heat-exchanger-enabled"].value and not mods["bobpower"] then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "tsp-basic-heat-exchanger4"
	})
end

if settings.startup["steam-turbines-enabled"].value and not mods["bobpower"] then
	table.insert(temp_effect, {
		type = "unlock-recipe",
		recipe = "tsp-steam-engine-4"
	})
end
	
ThermalSolarPowerTec4 =	{
	type = "technology",
	name = "tsp-thermal-solar-power-4",
	icon_size = 128,
	icon = "__thermal-solar-power__/graphics/tech/solar-energy.png",
	upgrade = true,
	effects = temp_effect,
	prerequisites = {"tsp-thermal-solar-power-3"},
	unit = 
	{
		count = 100,
		ingredients ={{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1}},
		time = 40,
	}
}

data:extend({ThermalSolarPowerTec1, ThermalSolarPowerTec2, ThermalSolarPowerTec3, ThermalSolarPowerTec4})
