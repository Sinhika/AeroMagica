# meat_tweaks.zs
#	Tweaks to OceanCraft & HarvestCraft to make cooked & raw meats work together.
#
# FISH
<ore:listAllfishraw>.add(<Oceancraft:BigFishRaw>);
<ore:listAllfishcooked>.add(<Oceancraft:BigFishCooked>);
<ore:listAllfishcooked>.add(<Oceancraft:CookedCrab>);
<ore:listAllfishcooked>.add(<Oceancraft:CookedPerch>);
<ore:listAllfishraw>.add(<Oceancraft:RawCrab>);
<ore:listAllfishraw>.add(<Oceancraft:RawPerch>);
<ore:listAllfishraw>.add(<MoCreatures:crabraw>);
<ore:listAllfishcooked>.add(<MoCreatures:crabcooked>);

# SPECIFIC MEATS
<ore:listAllchickencooked>.add(<Oceancraft:CookedBird>);
<ore:listAllchickenraw>.add(<Oceancraft:RawBird>);
<ore:listAllchickenraw>.add(<MoCreatures:ostrichraw>);
<ore:listAllchickencooked>.add(<MoCreatures:ostrichcooked>);
<ore:listAllchickenraw>.add(<MoCreatures:turkeyraw>);
<ore:listAllchickencooked>.add(<MoCreatures:turkeycooked>);

# new crab ore entry
<ore:listAllcrabcooked>.add(<Oceancraft:CookedCrab>);
<ore:listAllcrabcooked>.add(<MoCreatures:crabcooked>);
<ore:listAllcrabraw>.add(<Oceancraft:RawCrab>);
<ore:listAllcrabraw>.add(<MoCreatures:crabraw>);

# new raw turtle entry
<ore:listAllturtleraw>.add(<Oceancraft:RawTurtleMeat>);
<ore:listAllturtleraw>.add(<MoCreatures:turtleraw>);

# remove MoC turtle soup recipe
furnace.remove(<MoCreatures:turtlesoup>, <MoCreatures:turtleraw>);

# replace with OC cooked turtle
furnace.addRecipe(<Oceancraft:CookedTurtleMeat>, <ore:listAllturtleraw> );

# replace with HC-style turtle soup recipes - pot, stock, meat
recipes.addShapeless(<MoCreatures:turtlesoup>, 
					[<harvestcraft:potItem>.reuse(), <ore:listAllturtleraw>, <harvestcraft:stockItem>]);

# MEAT/FLESH
<ore:listAllmeatcooked>.add(<Oceancraft:CookedTurtleMeat>);
<ore:listAllmeatraw>.add(<MoCreatures:ratraw>);
<ore:listAllmeatcooked>.add(<MoCreatures:ratcooked>);

# lastly
<ore:listAllmeatcooked>.addAll(<ore:listAllchickencooked>);
<ore:listAllmeatraw>.addAll(<ore:listAllchickenraw>);
<ore:listAllmeatraw>.addAll(<ore:listAllturtleraw>);
