local data = _G.data
local mods = _G.mods
local data_util = require("data_util")
if mods["Krastorio2"] then
	local recipe
	-- Add K2 ingredients to filter
	recipe = data.raw["recipe"]["advanced-pollution-filter"]
	table.insert(recipe.ingredients, {"imersium-plate", 10})
	table.insert(recipe.ingredients, {"improved-pollution-filter", 10})
	data_util.remove_ingredient(recipe,"copper-plate")
	data_util.remove_ingredient(recipe,"plastic-bar")
	data_util.remove_ingredient(recipe,"coal")
	-- Change filter washing recipe
	recipe = data.raw["recipe"]["restore-used-advanced-pollution-filter"]
	table.insert(recipe.results,{ type = "fluid", name = "dirty-water", amount_min = 450, amount_max = 500, probability = 1})
	table.insert(recipe.results,{ type = "item",  name = "imersium-plate", amount_min = 1, amount_max = 10, probability = 0.2})
	table.insert(recipe.results,{ type = "item",  name = "improved-pollution-filter", amount_min = 1, amount_max = 10, probability = 0.2})
	data_util.remove_result(recipe,"stone")
	data_util.remove_result(recipe,"water")
	data_util.remove_result(recipe,"sulfuric-acid")
	-- Add K2 ingredients to filtering station
	recipe = data.raw["recipe"]["advanced-air-purifier"]
	table.insert(recipe.ingredients, {"kr-air-purifier", 10})
	table.insert(recipe.ingredients, {"imersium-plate", 10})
	data_util.remove_ingredient(recipe,"low-density-structure")
	data_util.remove_ingredient(recipe,"assembling-machine-3")
end
-- Integrate into K2 tech
if mods["Krastorio2"] then
	local tech
	tech = data.raw["technology"]["advanced-air-purification"]
	table.insert(tech.prerequisites,"kr-improved-pollution-filter")
end
