# crop_tweaks.zs
#   Modifications to Natura, Ashenwheat, GrowthCraft & Harvestcraft.
#   Mostly intended to make them work together smoothly.

# BARLEY (& FLOUR)
# add Natura barley to the ore dictionary.
<ore:cropBarley>.add(<Natura:barleyFood:0>);
<ore:seedBarley>.add(<Natura:barley.seed:0>);
<ore:listAllgrain>.add(<Natura:barleyFood:0>);

# remove HarvestCraft barley seeds from tall grass drop
# (they have already been configured to drop from tall grass instead
#  gardens, this should remove them from appearing in-game at all.)
#
vanilla.seeds.removeSeed(<harvestcraft:barleyseedItem>);

# remove Natura flour recipes
recipes.removeShaped(<Natura:barleyFood:1>);
recipes.removeShaped(<Natura:barleyFood:2>);
recipes.removeShaped(<minecraft:cake>, 
	[[<minecraft:milk_bucket>, <minecraft:milk_bucket>, <minecraft:milk_bucket>],
	 [<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>],
	 [null, <Natura:barleyFood:*>, null]]);
furnace.remove(<minecraft:bread:*>, <Natura:barleyFood:*> );

# let flour work in cake recipe
recipes.addShaped(<minecraft:cake>,
	[[<ore:listAllmilk>, <ore:listAllmilk>, <ore:listAllmilk>],
	 [<minecraft:sugar>, <minecraft:egg>, <minecraft:sugar>],
	 [<ore:flourEqualswheat>, <ore:flourEqualswheat>, <ore:flourEqualswheat>]]);

# MILK
# coconut milk is a milk
<ore:listAllmilk>.addAll(<ore:foodCoconutmilk>);

# COTTON
# remove HarvestCraft cotton seeds from tall grass drop
# (they have already been configured to drop from tall grass instead
#  gardens, this should remove them from appearing in-game at all.)
#
vanilla.seeds.removeSeed(<harvestcraft:cottonseedItem>);

# add Natura cotton to the ore dictionary
<ore:seedCotton>.add(<Natura:barley.seed:1>);
<ore:cropCotton>.add(<Natura:barleyFood:3>);

# RICE
# remove HarvestCraft rice seeds from tall grass drop
# (they have already been configured to drop from tall grass instead
#  gardens, this should remove them from appearing in-game at all.)
#
vanilla.seeds.removeSeed(<harvestcraft:riceseedItem>);
# GrowthCraft stuff is already ore-dictified.

# APPLES


# RASPBERRY
vanilla.seeds.removeSeed(<harvestcraft:raspberryseedItem>);
<ore:listAllfruit>.add(<Natura:berry>);
<ore:listAllberry>.add(<Natura:berry>);

# BLACKBERRY
vanilla.seeds.removeSeed(<harvestcraft:blackberryseedItem>);
<ore:listAllfruit>.add(<Natura:berry:2>);
<ore:listAllberry>.add(<Natura:berry:2>);

# BLUEBERRY
vanilla.seeds.removeSeed(<harvestcraft:blueberryseedItem>);
<ore:listAllfruit>.add(<Natura:berry:1>);
<ore:listAllberry>.add(<Natura:berry:1>);

# CACTUS
<ore:listAllfruit>.add(<Natura:saguaro.fruit>);
<ore:cropCactusfruit>.add(<Natura:saguaro.fruit>);
<ore:listAlljuice>.add(<Natura:waterdrop>);
<ore:foodCactusfruitjuice>.add(<Natura:waterdrop>);

# BREAD/TOAST
# but not ashenBread because it already smelts into charcoal
furnace.addRecipe(<harvestcraft:toastItem>, <ashenwheat:scintillaBread>);
<ore:listAllgrain>.add(<ashenwheat:ashWheatSheaf>);
<ore:listAllgrain>.add(<ashenwheat:scintillaWheatSheaf>);
<ore:listAllseed>.add(<ashenwheat:ashSeeds>);
<ore:listAllseed>.add(<ashenwheat:scintillaSeeds>);
# note: the other 2 plants are not edible.

# TODO: make ashenwheat breads useable in other bread recipes:

# MELON is a fruit
<ore:listAllfruit>.add(<minecraft:melon>);

# MUSHROOMS
<ore:listAllmushroom>.add(<Natura:Glowshroom:*>);

# ROOTS
<ore:listAllrootveggie>.add(<minecraft:potato>);
<ore:listAllrootveggie>.add(<minecraft:carrot>);

# BAMBOO
<harvestcraft:bambooshootItem>.displayName = "Dwarf Bamboo Shoot";
<harvestcraft:bambooshootseedItem>.displayName = "Dwarf Bamboo Seed";

# GRAPES
<harvestcraft:grapeItem>.displayName = "Wild Grapes";
<harvestcraft:grapeseedItem>.displayName = "Wild Grape Seed";
<harvestcraft:pamgrapeCrop>.displayName = "Wild Grape Vine";
<ore:cropGrapes>.mirror(<ore:cropGrape>);
<ore:foodGrapes>.add(<harvestcraft:grapeItem>);
<ore:seedGrapes>.mirror(<ore:seedGrape>);

# OTHER NATURA BERRIES
# Natura berries already ore-dictified. Mostly.
<ore:listAllfruit>.add(<Natura:berry:3>);
<ore:listAllberry>.add(<Natura:berry:3>);
<ore:listAllfruit>.add(<Natura:berry.nether>);
<ore:listAllberry>.add(<Natura:berry.nether>);
<ore:listAllfruit>.add(<Natura:berry.nether:1>);
<ore:listAllberry>.add(<Natura:berry.nether:1>);
<ore:listAllfruit>.add(<Natura:berry.nether:2>);
<ore:listAllberry>.add(<Natura:berry.nether:2>);
<ore:listAllfruit>.add(<Natura:berry.nether:3>);
<ore:listAllberry>.add(<Natura:berry.nether:3>);
