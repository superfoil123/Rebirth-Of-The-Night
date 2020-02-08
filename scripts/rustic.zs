import crafttweaker.item.IIngredient;

//cloudsbluff does not spawn, so remove it
//mods.jei.JEI.addDescription(<rustic:cloudsbluff>,"Only spawns in mountain biomes. Used to create bloons for air ships.");
mods.jei.JEI.removeAndHide(<rustic:cloudsbluff>);

mods.jei.JEI.removeAndHide(<rustic:crop_stake>);

mods.jei.JEI.removeAndHide(<rustic:rope>);

mods.jei.JEI.removeAndHide(<rustic:tomato_seeds>);
mods.jei.JEI.removeAndHide(<rustic:tomato>);

mods.jei.JEI.removeAndHide(<rustic:chili_pepper_seeds>);
mods.jei.JEI.removeAndHide(<rustic:chili_pepper>);

mods.jei.JEI.removeAndHide(<rustic:sapling_apple>);
mods.jei.JEI.removeAndHide(<rustic:apple_seeds>);
mods.jei.JEI.removeAndHide(<rustic:leaves_apple>);

mods.jei.JEI.removeAndHide(<rustic:grape_stem>);
mods.jei.JEI.removeAndHide(<rustic:grapes>);

mods.jei.JEI.removeAndHide(<rustic:tomato>);
mods.jei.JEI.removeAndHide(<rustic:chili_pepper>);
mods.jei.JEI.removeAndHide(<rustic:oliveseed>);

mods.jei.JEI.removeAndHide(<dynamictreesphc:grapefruitseed>);

mods.jei.JEI.removeAndHide(<rustic:olives>);
mods.jei.JEI.removeAndHide(<rustic:olive_oil>);
mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "oliveoil"}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "oliveoil", Amount: 1000}}));

mods.jei.JEI.removeAndHide(<rustic:honey>);
mods.jei.JEI.removeAndHide(<rustic:beeswax>);
mods.jei.JEI.removeAndHide(<rustic:honeycomb>);
mods.jei.JEI.removeAndHide(<rustic:beehive>);
mods.jei.JEI.removeAndHide(<rustic:bee>);

//remove rustic apiary for harvestcraft apiary
mods.jei.JEI.removeAndHide(<rustic:apiary>);

mods.jei.JEI.removeAndHide(<rustic:tallow>);

# Iron and Gold Lanterns

recipes.remove(<rustic:golden_lantern>);
recipes.remove(<rustic:iron_lantern>);

var iron = <minecraft:iron_ingot>;
var tin = <simpleores:tin_ingot>;
var gold = <minecraft:gold_ingot>;
var torch = <minecraft:torch>;
var glass = <minecraft:glass_pane>;


recipes.addShaped("Gold Lantern", <rustic:golden_lantern>,[
	[null, gold, null],
    [glass, torch, glass],
    [null, gold, null]
]);

recipes.addShaped("Tin Lantern", <rustic:iron_lantern>,[
	[null, tin, null],
    [glass, torch, glass],
    [null, tin, null]
]);
 

# Iron and Gold Candles

recipes.remove(<rustic:candle>);
recipes.remove(<rustic:candle_gold>);

var whitecandle = <betterwithmods:candle:0>;

recipes.addShaped("Iron Candle", <rustic:candle>,[
	[null, null, null],
    [null, whitecandle, null],
    [null, iron, null]
]);

recipes.addShaped("Golden Candle", <rustic:candle_gold>,[
	[null, null, null],
    [null, whitecandle, null],
    [null, gold, null]
]);

//Harvestcraft compatibility

//remove olive oil
mods.rustic.CrushingTub.removeRecipe(<liquid:oliveoil> * 250, <rustic:olives> * 1);

//grapes
mods.rustic.CrushingTub.addRecipe(<liquid:grapejuice> * 250, null, <harvestcraft:grapeitem> * 1);
mods.rustic.CrushingTub.removeRecipe(<liquid:grapejuice> * 250, <rustic:grapes> * 1);

//honey
mods.rustic.CrushingTub.addRecipe(<liquid:honey> * 250, null, <harvestcraft:honeycombitem> * 1);
mods.rustic.CrushingTub.removeRecipe(<liquid:honey> * 250, <rustic:honeycomb> * 1);

//remove apple byproduct
mods.rustic.CrushingTub.removeRecipe(<liquid:applejuice> * 250, <minecraft:apple> * 1);
mods.rustic.CrushingTub.addRecipe(<liquid:applejuice> * 250, null, <minecraft:apple> * 1);
