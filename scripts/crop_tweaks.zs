# crop_tweaks.zs
#   modifications to make Natura, GrowthCraft & Harvestcraft work together
#   smoothly.

# BARLEY (& FLOUR)

# add Natura barley to the ore dictionary.
<ore:cropBarley>.add(<Natura:barleyFood:0>);
<ore:seedBarley>.add(<Natura:barley.seed:0>);

# remove Natura flour recipes
recipes.removeShapeless(<Natura:barleyFood:1>);
recipes.removeShapeless(<Natura:barleyFood:2>);



