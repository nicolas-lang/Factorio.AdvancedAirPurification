data:extend({
	{
		type = "recipe",
		name = "advanced-pollution-filter",
		energy_required = 30,
		enabled = false,
		allow_productivity = false,
		ingredients =
		{
			{"coal", 50},
			{"copper-plate", 20},
			{"plastic-bar", 40}
		},
		result = "advanced-pollution-filter"
	},
	{
		type = "recipe",
		name = "restore-used-advanced-pollution-filter",
		category = "chemistry",
		icon = "__nco-AdvancedAirPurification__/images/" .. "restore-used-advanced-pollution-filter.png",
		icon_size = 128,
		energy_required = 60,
		enabled = false,
		ingredients =
		{
			{type = "item",  name = "used-advanced-pollution-filter", amount = 1},
			{type = "item",  name = "coal", amount = 50},
			{type = "fluid", name = "water", amount = 500}
		},
		results =
		{
			{ type = "item",  name = "advanced-pollution-filter", amount_min = 1, amount_max = 1, probability = 0.8},
			{ type = "item",  name = "stone", amount_min = 1, amount_max = 1, probability = 0.05},
			{ type = "fluid", name = "sulfuric-acid", amount_min = 1, amount_max = 10, probability = 0.25},
			{ type = "fluid", name = "water", amount_min = 250, amount_max = 450, probability = 1}
		},
		subgroup = "intermediate-product",
		order = "06[restore-used-pollution-filter-2]"
	},
	{
		type = "recipe",
		name = "advanced-air-purifier",
		energy_required = 30,
		enabled = false,
		ingredients =
		{
			{"low-density-structure", 50},
			{"processing-unit", 50},
			{"assembling-machine-3", 1},
			{"pump", 10}
		},
		result = "advanced-air-purifier"
	},
})
