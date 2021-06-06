data:extend({
	{
		type = "technology",
		name = "advanced-air-purification",
		mod = "Advanced-Air-Purification",
		icon = "__Advanced-Air-Purification__/images/" .. "tech-advanced-air-purifier.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "advanced-air-purifier"
			},
			{
				type = "unlock-recipe",
				recipe = "advanced-pollution-filter"
			},
			{
				type = "unlock-recipe",
				recipe = "advanced-air-cleaning"
			},
			{
				type = "unlock-recipe",
				recipe = "restore-used-advanced-pollution-filter"
			}
		},
		prerequisites = {
			"effectivity-module-3",
			"productivity-module-3",
			"speed-module-3"
		},
		order = "a-e-d",
		unit = {
			count = 750,
			time = 30,
			ingredients = {
				{ "space-science-pack", 1 },
				{ "production-science-pack", 1 },
			}
		}
	}
})