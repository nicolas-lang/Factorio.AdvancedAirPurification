-- A RECIPE IN THIS FILE SHOULD HAVE THE ATTRIBUTE category = "advanced-air-purification"
data:extend({
	{
		type = "recipe",
		name = "advanced-air-cleaning",
		category = "advanced-air-purification",
		icon = "__nco-AdvancedAirPurification__/images/" .. "icon-filtering.png",
		icon_size = 64,
		energy_required = 600,
		enabled = false,
		hidden = true,
		ingredients =
		{
			{ type = "item", name = "advanced-pollution-filter", amount = 1 }
		},
		results =
		{
			{ type = "item", name = "used-advanced-pollution-filter", probability = 1, amount = 1 }
		},
		subgroup = "raw-material",
		order = "zz[air-cleaning-2]"
    }
})