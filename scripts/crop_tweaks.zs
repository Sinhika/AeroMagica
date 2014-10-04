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




