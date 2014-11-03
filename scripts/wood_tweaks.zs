# wood_tweaks.zs
# tweaks to make wood-adding things work together.

import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

# ExtraBiomesXL - already handled by Bibliowoods
# ExtraBiomesXL - already has 1.8-style fence/door recipes

# MoCreatures
<ore:logWood>.add(<MoCreatures:MoCLog:0>);
<ore:logWood>.add(<MoCreatures:MoCLog:1>);
<ore:plankWood>.add(<MoCreatures:MoCWoodPlank:0>);
<ore:plankWood>.add(<MoCreatures:MoCWoodPlank:1>);

# change vanilla fence/door recipes to match 1.8 (gates already the same)
recipes.remove(<minecraft:fence>);
recipes.addShaped(<minecraft:fence> * 3, 
	[[null, null, null],
	[<minecraft:planks:*>, <ore:stickWood>, <minecraft:planks:*>],
	[<minecraft:planks:*>, <ore:stickWood>, <minecraft:planks:*>] ]);
	
recipes.remove(<minecraft:wooden_door>);
recipes.addShaped(<minecraft:wooden_door> * 3,
	[[<minecraft:planks:*>, <minecraft:planks:*>],
	[<minecraft:planks:*>, <minecraft:planks:*>],
	[<minecraft:planks:*>, <minecraft:planks:*>]]);
	
# NATURA - already handled by Bibliowoods
# add 1.8-style fence/door recipes for Natura woods.
val myNaturaPlanks = [
	<Natura:planks:0>, <Natura:planks:1>, <Natura:planks:2>, <Natura:planks:3>, 
	<Natura:planks:4>, <Natura:planks:5>, <Natura:planks:6>, <Natura:planks:7>, 
	<Natura:planks:8>, <Natura:planks:9>, <Natura:planks:10>, <Natura:planks:11>, 
	<Natura:planks:12> 
] as IIngredient[];
val myNaturaFences = [
	<Natura:Natura.fence:0>, <Natura:Natura.fence:1>, <Natura:Natura.fence:2>, <Natura:Natura.fence:3>,
	<Natura:Natura.fence:4>, <Natura:Natura.fence:5>, <Natura:Natura.fence:6>, <Natura:Natura.fence:7>,
	<Natura:Natura.fence:8>, <Natura:Natura.fence:9>, <Natura:Natura.fence:10>, <Natura:Natura.fence:11>,
	<Natura:Natura.fence:12>
] as IItemStack[];

recipes.remove(<Natura:Natura.fence:*>);
for i,fence in myNaturaFences 
{
	recipes.addShaped(fence * 3, 
	[[null, null, null],
	[myNaturaPlanks[i], <ore:stickWood>, myNaturaPlanks[i]],
	[myNaturaPlanks[i], <ore:stickWood>, myNaturaPlanks[i]] ]);
}

recipes.remove(<Natura:redwoodDoorItem:*>);

recipes.addShaped(<Natura:redwoodDoorItem:5> * 3,
	[[<Natura:planks:4>, <Natura:planks:4>, null],
	[<Natura:planks:4>, <Natura:planks:4>, null],
	[<Natura:planks:4>, <Natura:planks:4>, null]]);
recipes.addShaped(<Natura:redwoodDoorItem:1> * 3,
	[[<Natura:planks:0>, <Natura:planks:0>],
	[<Natura:planks:0>, <Natura:planks:0>],
	[<Natura:planks:0>, <Natura:planks:0>]]);
recipes.addShaped(<Natura:redwoodDoorItem:4> * 3,
	[[<Natura:planks:2>, <Natura:planks:2>],
	[<Natura:planks:2>, <Natura:planks:2>],
	[<Natura:planks:2>, <Natura:planks:2>]]);
recipes.addShaped(<Natura:redwoodDoorItem:2> * 3,
	[[<Natura:planks:5>, <Natura:planks:5>],
	[<Natura:planks:5>, <Natura:planks:5>],
	[<Natura:planks:5>, <Natura:planks:5>]]);
recipes.addShaped(<Natura:redwoodDoorItem:0> * 3,
	[[<Natura:planks:3>, <Natura:planks:3>],
	[<Natura:planks:3>, <Natura:planks:3>],
	[<Natura:planks:3>, <Natura:planks:3>]]);
recipes.addShaped(<Natura:redwoodDoorItem:6> * 3,
	[[<Natura:redwood:0>, <Natura:redwood:0>],
	[<Natura:redwood:0>, <Natura:redwood:0>],
	[<Natura:redwood:0>, <Natura:redwood:0>]]);
recipes.addShaped(<Natura:redwoodDoorItem:3> * 3,
	[[<Natura:planks:1>, <Natura:planks:1>],
	[<Natura:planks:1>, <Natura:planks:1>],
	[<Natura:planks:1>, <Natura:planks:1>]]);


# BOP - already handled by Bibliowoods. Does not have fences/gates/doors.
