# recipe_tweaks.zs
# other recipe changes and additions

# allow green backpacks to be made from MoC reptile hides.
# (nb: regular MoC hides are freely convertable to leather &
#  furs to wool)
recipes.addShaped(<Backpack:backpack:3>,
	[[<MoCreatures:reptilehide>,<MoCreatures:reptilehide>,<MoCreatures:reptilehide>],
	[<MoCreatures:reptilehide>, null, <MoCreatures:reptilehide>],
	[<MoCreatures:reptilehide>, <MoCreatures:reptilehide>, <MoCreatures:reptilehide>] ]);

# allow peaceful-only watering cans to be converted to regular ones.
#
recipes.addShapeless(<ExtraUtilities:watering_can:1>, 
			  [<ExtraUtilities:watering_can:0>, <minecraft:dye:15>]);

# allow quicksand to be turned into somewhat more useful regular sand.
#
furnace.addRecipe(<minecraft:sand:0>, <ExtrabiomesXL:quicksand> );
furnace.addRecipe(<minecraft:sand:0>, <BiomesOPlenty:mud:1>);
furnace.addRecipe(<minecraft:sand:0>, <Oceancraft:BlockQuicksand>);
furnace.addRecipe(<minecraft:sand:0>, <Oceancraft:BlockQuicksand2>);
