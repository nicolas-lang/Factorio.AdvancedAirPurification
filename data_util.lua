local data_util = {}

function data_util.remove_ingredient(recipe, name)
  for i = #recipe.ingredients, 1, -1 do
    if recipe.ingredients[i] then
      for _, value in pairs(recipe.ingredients[i]) do
        if value == name then
          table.remove(recipe.ingredients, i)
        end
      end
    end
  end
end

function data_util.remove_result(recipe, name)
  for i = #recipe.results, 1, -1 do
    if recipe.results[i] then
      for _, value in pairs(recipe.results[i]) do
        if value == name then
          table.remove(recipe.results, i)
        end
      end
    end
  end
end

function data_util.tech_remove_prerequisite (tech, prerequisite)
	if not tech then return end
	if tech.prerequisites then
		for i = #tech.prerequisites, 1, -1 do
			if tech.prerequisites[i] == prerequisite then
				table.remove(tech.prerequisites, i)
			end
		end
	end
end

function data_util.tech_remove_ingredient (tech, pack)
  if tech then
    for i = #tech.unit.ingredients, 1, -1 do
      if tech.unit.ingredients[i] and
        (tech.unit.ingredients[i][1] and tech.unit.ingredients[i][1] == pack
        or tech.unit.ingredients[i].name and tech.unit.ingredients[i].name == pack) then
        table.remove(tech.unit.ingredients, i)
      end
    end
  end
end

return data_util
