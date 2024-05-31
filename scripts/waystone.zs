import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;

// Replace Abyss Watcher recipe with the new one
craftingTable.remove(<item:fwaystones:abyss_watcher>);
craftingTable.addShaped("shaped_abyss_watcher", <item:fwaystones:abyss_watcher>, [
    [<item:minecraft:diamond>, <item:minecraft:ender_pearl>, <item:minecraft:diamond>]
]);

// Replace all waystone recipes with the new ones
for recipe in (craftingTable.getRecipesByOutput(<tag:items:fwaystones:waystones>) as stdlib.List<Recipe<Container>>) {
    craftingTable.remove(recipe.getResultItem());
    
    // Construct a 3x3 array of ingredients
    var ingredients = recipe.getIngredients();
    var newIngredients = [
        [ingredients[0], ingredients[1], ingredients[2]],
        [ingredients[3], <item:advancednetherite:netherite_diamond_block>, ingredients[5]],
        [ingredients[6], ingredients[7], ingredients[8]]
    ];
    
    craftingTable.addShaped(recipe.getId(), recipe.getResultItem(), newIngredients);
}