import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;

// Remove Angel Ring
craftingTable.remove(<item:kibe:angel_ring>);

// Replace Entangled Chest recipe with the new one
craftingTable.remove(<item:kibe:entangled_chest>);
craftingTable.addShaped("entangled_chest", <item:kibe:entangled_chest>, [
    [<item:minecraft:blaze_rod>, <item:minecraft:stone_bricks>, <item:minecraft:blaze_rod>],
    [<item:minecraft:ender_eye>, <item:minecraft:ender_chest>, <item:minecraft:ender_eye>],
    [<item:minecraft:blaze_rod>, <item:advancednetherite:netherite_gold_block>, <item:minecraft:blaze_rod>]
]);

// Replace Entangled Tank recipe with the new one
craftingTable.remove(<item:kibe:entangled_tank>);
craftingTable.addShaped("entangled_tank", <item:kibe:entangled_tank>, [
    [<item:minecraft:blaze_rod>, <item:minecraft:stone_bricks>, <item:minecraft:blaze_rod>],
    [<item:minecraft:ender_eye>, <item:minecraft:cauldron>, <item:minecraft:ender_eye>],
    [<item:minecraft:blaze_rod>, <item:advancednetherite:netherite_gold_block>, <item:minecraft:blaze_rod>]
]);

// Remove all elevetor recipes
for recipe in (craftingTable.getRecipesByOutput(<tag:items:kibe:elevators>) as stdlib.List<Recipe<Container>>) {
    craftingTable.remove(recipe.getResultItem());
}