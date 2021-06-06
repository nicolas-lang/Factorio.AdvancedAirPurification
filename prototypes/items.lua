data:extend({
	{
		type = "item",
		name = "advanced-pollution-filter",
		icon = "__Advanced-Air-Purification__/images/" .. "advanced-pollution-filter.png",
		icon_size = 64,
		icon_mipmaps = 4,
		subgroup = "intermediate-product",
		order = "06[pollution-filter-2]",
		stack_size = 5
	},
	{
		type = "item",
		name = "used-advanced-pollution-filter",
		icon = "__Advanced-Air-Purification__/images/" .. "used-advanced-pollution-filter.png",
		icon_size = 64,
		icon_mipmaps = 4,
		subgroup = "intermediate-product",
		order = "07[used-pollution-filter-2]",
		stack_size = 50
	},
	{
		type = "item",
		name = "advanced-air-purifier",
		icon = "__Advanced-Air-Purification__/images/" .. "advanced-air-purifier.png",
		icon_size = 64,
		subgroup = "production-machine",
		order = "z[air-purifier-2]",
		place_result = "advanced-air-purifier",
		stack_size = 10
    },
})