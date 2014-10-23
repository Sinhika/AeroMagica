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

# SPECIFIC MEATS
<ore:listAllchickencooked>.add(<Oceancraft:CookedBird>);
<ore:listAllchickenraw>.add(<Oceancraft:RawBird>);

# MEAT/FLESH
<ore:listAllmeatraw>.add(<Oceancraft:RawTurtleMeat>);
<ore:listAllmeatcooked>.add(<Oceancraft:CookedTurtleMeat>);

# lastly
<ore:listAllmeatcooked>.addAll(<ore:listAllchickencooked>);
<ore:listAllmeatraw>.addAll(<ore:listAllchickenraw>);
