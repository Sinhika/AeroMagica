# recipe_tweaks.zs
# other recipe changes and additions

# allow green backpacks to be made from MoC reptile hides.
# (nb: regular MoC hides are freely convertable to leather &
#  furs to wool)
recipes.addShaped(<Backpack:backpack:3>,
	[[<MoCreatures:reptilehide>,<MoCreatures:reptilehide>,<MoCreatures:reptilehide>],
	[<MoCreatures:reptilehide>, null, <MoCreatures:reptilehide>],
	[<MoCreatures:reptilehide>, <MoCreatures:reptilehide>, <MoCreatures:reptilehide>] ]);