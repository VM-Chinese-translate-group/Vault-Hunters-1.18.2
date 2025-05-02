import mods.jei.category.Custom;
import mods.jei.category.Custom;
import mods.jei.JEI;
import mods.jei.category.SimpleJeiCategory;
import mods.jei.category.JeiCategory;
import crafttweaker.api.text.TextComponent;
import mods.jei.component.JeiDrawable;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.item.IItemStack;

// ** Made by DrIceTea **

// 铭文台  recipes\inscription_recipes.json  66
// 催化剂灌注台  recipes\catalyst_recipes.json  154
// 神秘蛋  mystery_egg.json  mystery_hostile_egg.json  217
// 模组盲盒  mod_box.json  310
// 拾荒者物品  scavenger.json  485
// 宝藏钥匙  544
// 饰品  trinket.json
// 物品信息  552
// 水晶配方  vault_altar\vault_altar_ingredients.json  585


// 铭文台

var inscription = JeiCategory.create<Custom>("inscription_table", new TextComponent("铭文台"), <item:the_vault:inscription_table>, [<item:the_vault:inscription_table>]) as Custom;
inscription.background = JeiDrawable.blank(180, 45) as JeiDrawable;

inscription.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(130, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(4, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(25, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(46, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(67, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(88, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(109, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(130, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(157, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

inscription.addDrawable(154, 7, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 21, 18, 14) as JeiDrawable);

inscription.addSlot(0, 5, 6, true);
inscription.addSlot(1, 26, 6, true);
inscription.addSlot(2, 47, 6, true);
inscription.addSlot(3, 68, 6, true);
inscription.addSlot(4, 89, 6, true);
inscription.addSlot(5, 110, 6, true);
inscription.addSlot(6, 131, 6, true);
inscription.addSlot(7, 5, 26, true);
inscription.addSlot(8, 26, 26, true);
inscription.addSlot(9, 47, 26, true);
inscription.addSlot(10, 68, 26, true);
inscription.addSlot(11, 158, 26, false);

function runeItemR(pool as string, model as int) as IItemStack {
  return <item:the_vault:inscription>.withTag({data: {entries: [{pool: "the_vault:vault/rooms/raw/" + pool + "", count: 1 as int, color: 3118792 as int}], model: model, size: 10 as int}});
}
function runeItemO(pool as string, model as int) as IItemStack {
  return <item:the_vault:inscription>.withTag({data: {entries: [{pool: "the_vault:vault/rooms/omega/" + pool + "", count: 1 as int, color: 7012096 as int}], model: model, size: 10 as int}});
}
function runeItemC(pool as string, model as int) as IItemStack {
  return <item:the_vault:inscription>.withTag({data: {entries: [{pool: "the_vault:vault/rooms/challenge/" + pool + "", count: 1 as int, color: 15769088 as int}], model: model, size: 10 as int}});
}

// chromatic_caves
inscription.addRecipe([runeItemR("chromatic_caves", 16)], [<item:minecraft:iron_ingot> * 16, <item:the_vault:vault_gold> * 2, <item:the_vault:inscription_piece> * 4]);
JEI.addIngredient(runeItemR("chromatic_caves", 16));
// farm
inscription.addRecipe([runeItemR("farm", 17)], [<item:minecraft:dirt> * 64, <item:the_vault:vault_gold> * 1, <item:the_vault:inscription_piece> * 4]);
JEI.addIngredient(runeItemR("farm", 17));
// emerald_caves
inscription.addRecipe([runeItemR("emerald_caves", 18)], [<item:minecraft:diamond> * 8, <item:the_vault:vault_gold> * 1, <item:the_vault:inscription_piece> * 4]);
JEI.addIngredient(runeItemR("emerald_caves", 18));

// xmark
inscription.addRecipe([runeItemC("x-mark", 15)], [<item:the_vault:ornate_chest_scroll> * 2, <item:the_vault:vault_gold> * 8, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItemC("x-mark", 15));
// dragon
inscription.addRecipe([runeItemC("dragon", 7)], [<item:the_vault:bounty_pearl> * 32, <item:the_vault:gem_echo> * 2, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItemC("dragon", 7));
// crystal cave
inscription.addRecipe([runeItemC("crystal_caves", 5)], [<item:the_vault:gem_larimar> * 64, <item:the_vault:vault_gold> * 8, <item:the_vault:inscription_piece> * 4]);
JEI.addIngredient(runeItemC("crystal_caves", 5));
// factory
inscription.addRecipe([runeItemC("factory", 8)], [<item:minecraft:netherite_block> * 1, <item:the_vault:vault_gold> * 8, <item:the_vault:gem_echo> * 2, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItemC("factory", 8));
// village
inscription.addRecipe([runeItemC("village", 13)], [<item:the_vault:living_chest_scroll> * 1, <item:the_vault:gilded_chest_scroll> * 1, <item:the_vault:ornate_chest_scroll> * 1, <item:the_vault:vault_gold> * 12, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItemC("village", 13));
// raid room
inscription.addRecipe([runeItemC("raid/rooms", 19)], [<item:minecraft:emerald> * 256, <item:the_vault:gem_echo> * 4, <item:the_vault:vault_gold> * 12, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItemC("raid/rooms", 19));
// lab
inscription.addRecipe([runeItemC("laboratory", 20)], [<item:the_vault:mystery_hostile_egg> * 2, <item:the_vault:gem_echo> * 4, <item:the_vault:vault_gold> * 12, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItemC("laboratory", 20));

// mushroom
inscription.addRecipe([runeItemO("mush_room", 2)], [<item:the_vault:living_chest_scroll> * 5, <item:the_vault:vault_gold> * 16, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItemO("mush_room", 2));
// blacksmith
inscription.addRecipe([runeItemO("blacksmith", 1)], [<item:the_vault:ornate_chest_scroll> * 5, <item:the_vault:vault_gold> * 16, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItemO("blacksmith", 1));
// library
inscription.addRecipe([runeItemO("library", 3)], [<item:the_vault:gilded_chest_scroll> * 5, <item:the_vault:vault_gold> * 16, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItemO("library", 3));
// cove
inscription.addRecipe([runeItemO("cove", 4)], [<item:the_vault:bounty_pearl> * 32, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 8]);
JEI.addIngredient(runeItemO("cove", 4));
// painting
inscription.addRecipe([runeItemO("painting", 10)], [<item:the_vault:gilded_chest_scroll> * 2, <item:the_vault:ornate_chest_scroll> * 2, <item:the_vault:living_chest_scroll> * 2, <item:the_vault:wooden_chest_scroll> * 2, <item:the_vault:bounty_pearl> * 8, <item:the_vault:vault_gold> * 8, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItemO("painting", 10));
// vendor
inscription.addRecipe([runeItemO("vendor", 12)], [<item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 8]);
JEI.addIngredient(runeItemO("vendor", 12));

// Add category
JEI.addCategory(inscription);




// 催化剂灌注台

//JEI.hideCategory("the_vault:catalyst_infusion_table");

var infusion = JeiCategory.create<Custom>("catalyst_infusion_table", new TextComponent("催化剂灌注台"), <item:the_vault:catalyst_infusion_table>, [<item:the_vault:catalyst_infusion_table>]) as Custom;
infusion.background = JeiDrawable.blank(175, 65) as JeiDrawable;

infusion.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(4, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(25, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(46, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(67, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(88, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(109, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(130, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(151, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(4, 45, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(25, 45, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(46, 45, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(67, 45, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(88, 45, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(109, 45, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(130, 45, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
infusion.addDrawable(151, 45, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

infusion.addDrawable(88, 7, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 21, 18, 14) as JeiDrawable);

infusion.addSlot(0, 5, 6, true);
infusion.addSlot(1, 26, 6, true);
infusion.addSlot(2, 47, 6, true);

infusion.addSlot(3, 5, 26, false);
infusion.addSlot(4, 26, 26, false);
infusion.addSlot(5, 47, 26, false);
infusion.addSlot(6, 68, 26, false);
infusion.addSlot(7, 89, 26, false);
infusion.addSlot(8, 110, 26, false);
infusion.addSlot(9, 131, 26, false);
infusion.addSlot(10, 152, 26, false);
infusion.addSlot(11, 5, 46, false);

function infusionCatalystItem(model as int, modifier as string) as IItemStack {
  return <item:the_vault:vault_catalyst_infused>.withTag({model: model, size: 10 as int, modifiers: [modifier, "the_vault:challenge_stack"]});
}

// recipe
infusion.addRecipe([infusionCatalystItem(1, "the_vault:wooden_cascade"),
infusionCatalystItem(2, "the_vault:gilded_cascade"),
infusionCatalystItem(4, "the_vault:ornate_cascade"),
infusionCatalystItem(3, "the_vault:living_cascade"),
infusionCatalystItem(6, "the_vault:extended"),
infusionCatalystItem(7, "the_vault:xp_gain"),
infusionCatalystItem(5, "the_vault:coin_cascade"),
infusionCatalystItem(8, "the_vault:plentiful"),
infusionCatalystItem(9, "the_vault:soul_boost")],
[<item:the_vault:vault_catalyst_fragment> * 9, <item:the_vault:gem_benitoite> * 4, <item:the_vault:dreamstone> * 4]);

JEI.addCategory(infusion);




// Mystery Eggs

var mysteryEgg = JeiCategory.create<Custom>("mystery_egg", new TextComponent("神秘蛋"), <item:the_vault:mystery_egg>, [<item:the_vault:mystery_egg>]) as Custom;
mysteryEgg.background = JeiDrawable.blank(175, 95) as JeiDrawable;

for i in 0 .. 4 {
    mysteryEgg.addDrawable(4, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryEgg.addDrawable(26, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryEgg.addDrawable(47, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryEgg.addDrawable(68, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryEgg.addDrawable(89, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryEgg.addDrawable(110, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryEgg.addDrawable(131, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryEgg.addDrawable(152, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 4 {
    for column in 0 .. 8 {
        mysteryEgg.addSlot(8 * i + column, 6 + (column * 21), 6 + (i * 21), false);
    }
}

var mysteryHostileEgg = JeiCategory.create<Custom>("mystery_hostile_egg", new TextComponent("神秘敌对蛋"), <item:the_vault:mystery_hostile_egg>, [<item:the_vault:mystery_hostile_egg>]) as Custom;
mysteryHostileEgg.background = JeiDrawable.blank(175, 95) as JeiDrawable;

for i in 0 .. 4 {
    mysteryHostileEgg.addDrawable(4, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryHostileEgg.addDrawable(26, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryHostileEgg.addDrawable(47, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryHostileEgg.addDrawable(68, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryHostileEgg.addDrawable(89, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryHostileEgg.addDrawable(110, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryHostileEgg.addDrawable(131, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    mysteryHostileEgg.addDrawable(152, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 4 {
    for column in 0 .. 8 {
        mysteryHostileEgg.addSlot(8 * i + column, 6 + (column * 21), 6 + (i * 21), false);
    }
}

function mysteryEggItem(item as string, chance as float) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"概率: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}});
}

// recipe
mysteryEgg.addRecipe([mysteryEggItem("minecraft:pig_spawn_egg", 19.53),
mysteryEggItem("minecraft:sheep_spawn_egg", 15.63),
mysteryEggItem("minecraft:chicken_spawn_egg", 12.50),
mysteryEggItem("minecraft:cow_spawn_egg", 12.50),
mysteryEggItem("minecraft:cod_spawn_egg", 4.69),
mysteryEggItem("minecraft:mooshroom_spawn_egg", 3.13),
mysteryEggItem("minecraft:rabbit_spawn_egg", 3.13),
mysteryEggItem("minecraft:salmon_spawn_egg", 3.13),
mysteryEggItem("minecraft:squid_spawn_egg", 3.13),
mysteryEggItem("minecraft:bee_spawn_egg", 2.34),
mysteryEggItem("minecraft:cat_spawn_egg", 1.95),
mysteryEggItem("minecraft:dolphin_spawn_egg", 1.95),
mysteryEggItem("minecraft:goat_spawn_egg", 1.95),
mysteryEggItem("minecraft:tropical_fish_spawn_egg", 1.95),
mysteryEggItem("minecraft:bat_spawn_egg", 1.56),
mysteryEggItem("minecraft:donkey_spawn_egg", 1.56),
mysteryEggItem("minecraft:parrot_spawn_egg", 1.56),
mysteryEggItem("minecraft:polar_bear_spawn_egg", 1.56),
mysteryEggItem("minecraft:pufferfish_spawn_egg", 1.56),
mysteryEggItem("minecraft:axolotl_spawn_egg", 0.78),
mysteryEggItem("minecraft:glow_squid_spawn_egg", 0.78),
mysteryEggItem("minecraft:panda_spawn_egg", 0.78),
mysteryEggItem("minecraft:strider_spawn_egg", 0.78),
mysteryEggItem("minecraft:turtle_spawn_egg", 0.78),
mysteryEggItem("alexsmobs:spawn_egg_flutter", 0.78)], []);

JEI.addCategory(mysteryEgg);

mysteryHostileEgg.addRecipe([mysteryEggItem("minecraft:cave_spider_spawn_egg", 10.70),
mysteryEggItem("minecraft:skeleton_spawn_egg", 10.70),
mysteryEggItem("minecraft:spider_spawn_egg", 10.70),
mysteryEggItem("minecraft:stray_spawn_egg", 10.70),
mysteryEggItem("minecraft:zombie_spawn_egg", 10.70),
mysteryEggItem("minecraft:drowned_spawn_egg", 7.13),
mysteryEggItem("minecraft:husk_spawn_egg", 7.13),
mysteryEggItem("minecraft:enderman_spawn_egg", 5.35),
mysteryEggItem("minecraft:creeper_spawn_egg", 4.46),
mysteryEggItem("minecraft:slime_spawn_egg", 3.57),
mysteryEggItem("minecraft:zombified_piglin_spawn_egg", 2.14),
mysteryEggItem("minecraft:blaze_spawn_egg", 1.78),
mysteryEggItem("minecraft:piglin_spawn_egg", 1.78),
mysteryEggItem("minecraft:piglin_brute_spawn_egg", 1.78),
mysteryEggItem("minecraft:pillager_spawn_egg", 1.78),
mysteryEggItem("minecraft:magma_cube_spawn_egg", 1.43),
mysteryEggItem("minecraft:ghast_spawn_egg", 0.89),
mysteryEggItem("minecraft:guardian_spawn_egg", 0.89),
mysteryEggItem("minecraft:witch_spawn_egg", 0.89),
mysteryEggItem("minecraft:phantom_spawn_egg", 0.71),
mysteryEggItem("minecraft:shulker_spawn_egg", 0.71),
mysteryEggItem("minecraft:vindicator_spawn_egg", 0.71),
mysteryEggItem("minecraft:wither_skeleton_spawn_egg", 0.71),
mysteryEggItem("minecraft:evoker_spawn_egg", 0.53),
mysteryEggItem("minecraft:elder_guardian_spawn_egg", 0.36),
mysteryEggItem("minecraft:hoglin_spawn_egg", 0.36),
mysteryEggItem("cagerium:iron_golem_spawn_egg", 0.36),
mysteryEggItem("minecraft:ravager_spawn_egg", 0.36),
mysteryEggItem("cagerium:wither_spawn_egg", 0.36),
mysteryEggItem("minecraft:zoglin_spawn_egg", 0.36)], []);

JEI.addCategory(mysteryHostileEgg);




// Mod Box

var modBox = JeiCategory.create<Custom>("mod_box", new TextComponent("模组盲盒"), <item:the_vault:mod_box>, [<item:the_vault:mod_box>]) as Custom;
modBox.background = JeiDrawable.blank(175, 45) as JeiDrawable;

for i in 0 .. 2 {
    modBox.addDrawable(4, 4 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    modBox.addDrawable(26, 4 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    modBox.addDrawable(47, 4 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    modBox.addDrawable(68, 4 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    modBox.addDrawable(89, 4 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    modBox.addDrawable(110, 4 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    modBox.addDrawable(131, 4 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    modBox.addDrawable(152, 4 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 2 {
    for column in 0 .. 8 {
        modBox.addSlot(8 * i + column, 5 + (column * 21), 6 + (i * 21), false);
    }
}

function modBoxItem(item as string, lockBy as string, num as int, weight as int) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"需解锁研究: " + lockBy + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + weight + "\",\"italic\":false,\"color\":\"gray\"}]"]}}) * num;
}

modBox.addRecipe([<item:the_vault:knowledge_star_shard>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"无需解锁研究\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"数量: 1 - 4\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: 1\",\"italic\":false,\"color\":\"gray\"}]"]}})], []);

// recipe
modBox.addRecipe([modBoxItem("framedcompactdrawers:framed_compact_drawer", "储物抽屉", 1, 50),
modBoxItem("framedcompactdrawers:framed_drawer_controller", "储物抽屉", 1, 25),
modBoxItem("storagedrawers:iron_storage_upgrade", "储物抽屉", 1, 75),
modBoxItem("storagedrawers:gold_storage_upgrade", "储物抽屉", 1, 70),
modBoxItem("storagedrawers:diamond_storage_upgrade", "储物抽屉", 1, 65),
modBoxItem("storagedrawers:obsidian_storage_upgrade", "储物抽屉", 1, 60),
modBoxItem("storagedrawers:emerald_storage_upgrade", "储物抽屉", 1, 5),
modBoxItem("storagedrawers:upgrade_template", "储物抽屉", 4, 100),
modBoxItem("storagedrawers:void_upgrade", "储物抽屉", 1, 80)], []);

modBox.addRecipe([modBoxItem("refinedstorage:1k_storage_disk", "精致存储", 1, 80),
modBoxItem("refinedstorage:4k_storage_disk", "精致存储", 1, 70),
modBoxItem("refinedstorage:16k_storage_disk", "精致存储", 1, 25),
modBoxItem("refinedstorage:64k_storage_disk", "精致存储", 1, 5),
modBoxItem("refinedstorage:grid", "精致存储", 1, 40),
modBoxItem("refinedstorage:disk_drive", "精致存储", 1, 50),
modBoxItem("refinedstorage:speed_upgrade", "精致存储", 1, 100),
modBoxItem("refinedstorage:stack_upgrade", "精致存储", 1, 75),
modBoxItem("refinedstorage:crafting_grid", "精致存储", 1, 10),
modBoxItem("refinedstorage:external_storage", "精致存储", 1, 65)], []);

modBox.addRecipe([modBoxItem("ae2:fluix_smart_dense_cable", "应用能源", 4, 100),
modBoxItem("ae2:item_storage_cell_1k", "应用能源", 1, 80),
modBoxItem("ae2:item_storage_cell_4k", "应用能源", 1, 75),
modBoxItem("ae2:item_storage_cell_16k", "应用能源", 1, 70),
modBoxItem("ae2:item_storage_cell_64k", "应用能源", 1, 5),
modBoxItem("ae2:terminal", "应用能源", 1, 40),
modBoxItem("ae2:crafting_terminal", "应用能源", 1, 10),
modBoxItem("ae2:drive", "应用能源", 1, 50),
modBoxItem("ae2:speed_card", "应用能源", 2, 75),
modBoxItem("ae2:storage_bus", "应用能源", 1, 65)], []);

modBox.addRecipe([modBoxItem("powah:furnator_starter", "Powah", 1, 120),
modBoxItem("powah:furnator_hardened", "Powah", 1, 70),
modBoxItem("powah:furnator_blazing", "Powah", 1, 40),
modBoxItem("powah:furnator_spirited", "Powah", 1, 5),
modBoxItem("powah:solar_panel_starter", "Powah", 1, 80),
modBoxItem("powah:solar_panel_hardened", "Powah", 1, 70),
modBoxItem("powah:solar_panel_blazing", "Powah", 1, 40),
modBoxItem("powah:thermo_generator_basic", "Powah", 1, 80),
modBoxItem("powah:thermo_generator_hardened", "Powah", 1, 70),
modBoxItem("powah:thermo_generator_blazing", "Powah", 1, 40),
modBoxItem("powah:thermo_generator_niotic", "Powah", 1, 5),
modBoxItem("powah:energizing_rod_blazing", "Powah", 1, 40),
modBoxItem("powah:energizing_rod_niotic", "Powah", 1, 10),
modBoxItem("powah:energy_cell_blazing", "Powah", 1, 40),
modBoxItem("powah:energy_cell_spirited", "Powah", 1, 5),
modBoxItem("powah:ender_cell_hardened", "Powah", 1, 40)], []);

modBox.addRecipe([modBoxItem("thermal:dynamo_stirling", "热力发电机", 1, 100),
modBoxItem("thermal:dynamo_compression", "热力发电机", 1, 100),
modBoxItem("thermal:dynamo_magmatic", "热力发电机", 1, 100),
modBoxItem("thermal:dynamo_lapidary", "热力发电机", 1, 100),
modBoxItem("thermal:dynamo_numismatic", "热力发电机", 1, 100),
modBoxItem("thermal:dynamo_disenchantment", "热力发电机", 1, 100),
modBoxItem("thermal:dynamo_gourmand", "热力发电机", 1, 100)], []);

modBox.addRecipe([modBoxItem("thermal:device_nullifier", "热力膨胀", 1, 100),
modBoxItem("thermal:device_water_gen", "热力膨胀", 1, 80),
modBoxItem("thermal:device_fisher", "热力膨胀", 1, 60),
modBoxItem("thermal:device_composter", "热力膨胀", 1, 60),
modBoxItem("thermal:machine_chiller", "热力膨胀", 1, 40),
modBoxItem("thermal:device_collector", "热力膨胀", 1, 20),
modBoxItem("thermal:device_rock_gen", "热力膨胀", 1, 5),
modBoxItem("thermal:machine_sawmill", "热力膨胀", 1, 40)], []);

modBox.addRecipe([modBoxItem("mekanismgenerators:solar_generator", "通用机械发电机", 1, 80),
modBoxItem("mekanismgenerators:bio_generator", "通用机械发电机", 1, 80),
modBoxItem("mekanismgenerators:advanced_solar_generator", "通用机械发电机", 1, 20),
modBoxItem("mekanismgenerators:heat_generator", "通用机械发电机", 1, 100),
modBoxItem("mekanismgenerators:gas_burning_generator", "通用机械发电机", 1, 10),
modBoxItem("mekanismgenerators:wind_generator", "通用机械发电机", 1, 5)], []);

modBox.addRecipe([modBoxItem("create:gearbox", "机械动力", 4, 120),
modBoxItem("create:depot", "机械动力", 1, 100),
modBoxItem("create:mechanical_bearing", "机械动力", 1, 80),
modBoxItem("create:water_wheel", "机械动力", 1, 60),
modBoxItem("create:large_water_wheel", "机械动力", 1, 40),
modBoxItem("create:blaze_burner", "机械动力", 1, 40),
modBoxItem("create:mechanical_arm", "机械动力", 1, 20),
modBoxItem("create:cart_assembler", "机械动力", 1, 5)], []);

modBox.addRecipe([modBoxItem("mekanism:upgrade_speed", "通用机械", 4, 120),
modBoxItem("mekanism:upgrade_energy", "通用机械", 4, 120),
modBoxItem("mekanism:basic_tier_installer", "通用机械", 1, 75),
modBoxItem("mekanism:advanced_tier_installer", "通用机械", 1, 40),
modBoxItem("mekanism:elite_tier_installer", "通用机械", 1, 10),
modBoxItem("mekanism:basic_energy_cube", "通用机械", 1, 80),
modBoxItem("mekanism:advanced_energy_cube", "通用机械", 1, 20),
modBoxItem("mekanism:elite_energy_cube", "通用机械", 1, 5)], []);

modBox.addRecipe([modBoxItem("botania:blacker_lotus", "植物魔法", 1, 140),
modBoxItem("botania:gourmaryllis", "植物魔法", 1, 80),
modBoxItem("botania:rosa_arcana", "植物魔法", 1, 80),
modBoxItem("botania:overgrowth_seed", "植物魔法", 1, 70),
modBoxItem("botania:munchdew", "植物魔法", 1, 60),
modBoxItem("botania:entropinnyum", "植物魔法", 1, 40),
modBoxItem("botania:kekimurus", "植物魔法", 1, 40),
modBoxItem("botania:agricarnation", "植物魔法", 1, 40),
modBoxItem("botania:marimorphosis", "植物魔法", 1, 40),
modBoxItem("botania:bellethorn", "植物魔法", 1, 30),
modBoxItem("botania:exoflame", "植物魔法", 1, 20),
modBoxItem("botania:orechid", "植物魔法", 1, 5),
modBoxItem("botania:loonium", "植物魔法", 1, 5)], []);

modBox.addRecipe([modBoxItem("easy_villagers:trader", "简易村民", 1, 100),
modBoxItem("easy_villagers:farmer", "简易村民", 1, 20),
modBoxItem("easy_villagers:auto_trader", "简易村民", 1, 2),
modBoxItem("easy_villagers:iron_farm", "简易村民", 1, 5)], []);

JEI.addCategory(modBox);



// Scavenger Items

var scavenger = JeiCategory.create<Custom>("scavenger", new TextComponent("拾荒者物品"), <item:the_vault:scavenger_altar>, [<item:the_vault:scavenger_altar>]) as Custom;
scavenger.background = JeiDrawable.blank(140, 25) as JeiDrawable;

scavenger.addDrawable(4, 4, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
scavenger.addDrawable(52, 4, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
scavenger.addDrawable(73, 4, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
scavenger.addDrawable(94, 4, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
scavenger.addDrawable(115, 4, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

scavenger.addDrawable(25, 4, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 62, 93, 21, 15) as JeiDrawable);

scavenger.addSlot(0, 5, 5, true);
scavenger.addSlot(1, 53, 5, false);
scavenger.addSlot(2, 74, 5, false);
scavenger.addSlot(3, 95, 5, false);
scavenger.addSlot(4, 116, 5, false);
scavenger.addSlot(5, 137, 5, false);

function scavengerItem(item as string, chance as float) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"概率: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}});
}

// recipe
scavenger.addRecipe([scavengerItem("the_vault:scavenger_zombie_blood_vial", 13.33),
scavengerItem("the_vault:scavenger_cracked_script", 6.67),
scavengerItem("the_vault:scavenger_green_bangle", 3.33),
scavengerItem("the_vault:scavenger_cracked_pearl", 1.67)], 
[<item:the_vault:coin_pile>]);

scavenger.addRecipe([scavengerItem("the_vault:scavenger_ripped_page", 26.67),
scavengerItem("the_vault:scavenger_old_book", 13.33),
scavengerItem("the_vault:scavenger_pottery_shard", 6.67),
scavengerItem("the_vault:scavenger_spider_webbing_spool", 3.33)], 
[<item:the_vault:wooden_chest>]);

scavenger.addRecipe([scavengerItem("the_vault:scavenger_drowned_hide", 26.67),
scavengerItem("the_vault:scavenger_zombie_arm", 13.33),
scavengerItem("the_vault:scavenger_zombie_brain", 6.67),
scavengerItem("the_vault:scavenger_creeper_eye", 3.33)], 
[<item:the_vault:living_chest>]);

scavenger.addRecipe([scavengerItem("the_vault:scavenger_empty_jar", 26.67),
scavengerItem("the_vault:scavenger_sack", 13.33),
scavengerItem("the_vault:scavenger_saddle_bag", 6.67),
scavengerItem("the_vault:scavenger_wizard_wand", 3.33)], 
[<item:the_vault:ornate_chest>]);

scavenger.addRecipe([scavengerItem("the_vault:scavenger_red_scroll", 26.67),
scavengerItem("the_vault:scavenger_spider_soul_charm", 13.33),
scavengerItem("the_vault:scavenger_goblet", 6.67),
scavengerItem("the_vault:scavenger_earrings", 3.33)], 
[<item:the_vault:gilded_chest>]);

scavenger.addRecipe([scavengerItem("the_vault:scavenger_skeleton_bone_shard", 16.0),
scavengerItem("the_vault:scavenger_skeleton_wishbone", 8.0),
scavengerItem("the_vault:scavenger_skeleton_ribcage", 4.0),
scavengerItem("the_vault:scavenger_skeleton_skull", 2.0)], 
[[<item:the_vault:ore_alexandrite>, <item:the_vault:ore_benitoite>, <item:the_vault:ore_larimar>, <item:the_vault:ore_black_opal>, <item:the_vault:ore_painite>, <item:the_vault:ore_iskallium>, <item:the_vault:ore_gorginite>, <item:the_vault:ore_sparkletine>, <item:the_vault:ore_ashium>, <item:the_vault:ore_bomignite>, <item:the_vault:ore_tubium>, <item:the_vault:ore_wutodie>, <item:the_vault:ore_upaline>, <item:the_vault:ore_petzanite>, <item:the_vault:ore_xenium>, <item:the_vault:ore_echo>]]);

scavenger.addRecipe([scavengerItem("the_vault:scavenger_mob_green", 30.0),
scavengerItem("the_vault:scavenger_mob_purple", 30.0),
scavengerItem("the_vault:scavenger_mob_black", 30.0)], 
[<item:minecraft:zombie_head>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"生物掉落\"}" as string, Lore: ["[{\"text\":\"宝库中击杀生物掉落 详见怪物图鉴\",\"italic\":false,\"color\":\"gray\"}]"]}})]);

JEI.addCategory(scavenger);




// Keys
var treasureKey = JeiCategory.create<Custom>("treasure_key", new TextComponent("宝藏钥匙"), <item:the_vault:unidentified_treasure_key>, [<item:the_vault:unidentified_treasure_key>]) as Custom;
treasureKey.background = JeiDrawable.blank(180, 30) as JeiDrawable;

for i in 0 .. 9 {
    treasureKey.addDrawable(1 + (i * 20), 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 9 {
    treasureKey.addSlot(i, 2 + (i * 20), 6, false);
}

// keys
treasureKey.addRecipe([<item:the_vault:key_iskallium>, <item:the_vault:key_gorginite>, <item:the_vault:key_sparkletine>, <item:the_vault:key_ashium>, <item:the_vault:key_bomignite>, <item:the_vault:key_tubium>, <item:the_vault:key_upaline>, <item:the_vault:key_petzanite>, <item:the_vault:key_xenium>], []);
JEI.addCategory(treasureKey);




// Item Infos

mods.jei.JEI.addDescription(<item:the_vault:vault_compass>, ("它只在宝库世界中生效。解锁研究“宝库指南针”后，在宝库世界中，这个指南针会默认指向返回传送门的位置。你也可以对着某个方块潜行长按右键，将宝库指南针的指向绑定为该方块，但绑定后在此宝库内无法再指向返回传送门。"));
mods.jei.JEI.addDescription(<item:the_vault:old_notes>, ("记录了一些奇怪挑战的古老笔记。完成它的挑战或许能解锁某些奇特的幻形……"));
mods.jei.JEI.addDescription(<item:the_vault:artifact_fragment>, ("将重复的文物丢进火中就能将它烧成文物碎片。4个文物碎片可以合成1个未鉴定的文物。"));



// Crystal Recipes

var crystal = JeiCategory.create<Custom>("vault_crystal", new TextComponent("宝库水晶"), <item:the_vault:vault_altar>, [<item:the_vault:vault_altar>]) as Custom;
crystal.background = JeiDrawable.blank(175, 135) as JeiDrawable;

for i in 0 .. 6 {
    crystal.addDrawable(4, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(26, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(47, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(68, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(89, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(110, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(131, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(152, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 6 {
    for column in 0 .. 8 {
        crystal.addSlot(8 * i + column, 6 + (column * 21), 6 + (i * 21), true);
    }
}

function crystalItem(item as string, level as string, pool as string) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"等级: \",\"italic\":false,\"color\":\"white\",\"bold\":true},{\"text\":\""+ level + "\",\"color\":\"white\",\"bold\":false},{\"text\":\"\",\"color\":\"dark_purple\",\"bold\":false}]" as string, "[{\"text\":\"随机池: \",\"italic\":false,\"color\":\"white\",\"bold\":true},{\"text\":\"" + pool +"\",\"color\":\"white\",\"bold\":false}]" as string]}});
}

// Farmable Items
crystal.addRecipe([], [[crystalItem("minecraft:wheat_seeds", 0, "种物")],
[crystalItem("minecraft:oak_leaves", 0, "种物"),
crystalItem("minecraft:spruce_leaves", 0, "种物"),
crystalItem("minecraft:birch_leaves", 0, "种物"),
crystalItem("minecraft:jungle_leaves", 0, "种物"),
crystalItem("minecraft:acacia_leaves", 0, "种物"),
crystalItem("minecraft:dark_oak_leaves", 0, "种物"),
crystalItem("minecraft:azalea_leaves", 0, "种物"),
crystalItem("minecraft:flowering_azalea_leaves", 0, "种物"),
crystalItem("ecologics:coconut_leaves", 0, "种物"),
crystalItem("ecologics:walnut_leaves", 0, "种物")],
[crystalItem("minecraft:sugar_cane", 10, "种物")],
[crystalItem("minecraft:carrot", 10, "种物")],
[crystalItem("minecraft:potato", 10, "种物")],
[crystalItem("minecraft:wheat", 10, "种物")],
[crystalItem("minecraft:kelp", 10, "种物")],
[crystalItem("minecraft:cactus", 10, "种物")],
[crystalItem("minecraft:bamboo", 10, "种物")],
[crystalItem("minecraft:vine", 10, "种物")],
[crystalItem("minecraft:beetroot", 10, "种物")],
[crystalItem("minecraft:snowball", 10, "种物")],
[crystalItem("minecraft:pumpkin", 10, "种物")],
[crystalItem("minecraft:melon", 10, "种物")],
[crystalItem("minecraft:azalea", 10, "种物"),
crystalItem("minecraft:flowering_azalea", 10, "种物")],
[crystalItem("minecraft:sea_pickle", 10, "种物")],
[crystalItem("minecraft:dandelion", 10, "种物"),
crystalItem("minecraft:poppy", 10, "种物"),
crystalItem("minecraft:blue_orchid", 10, "种物"),
crystalItem("minecraft:allium", 10, "种物"),
crystalItem("minecraft:azure_bluet", 10, "种物"),
crystalItem("minecraft:oxeye_daisy", 10, "种物"),
crystalItem("minecraft:cornflower", 10, "种物"),
crystalItem("minecraft:lily_of_the_valley", 10, "种物")],
[crystalItem("minecraft:beetroot_seeds", 10, "种物")],
[crystalItem("minecraft:sweet_berries", 10, "种物")],
[crystalItem("minecraft:apple", 10, "种物")],
[crystalItem("minecraft:seagrass", 10, "种物")],
[crystalItem("minecraft:brown_mushroom", 20, "种物")],
[crystalItem("minecraft:red_mushroom", 20, "种物")],
[crystalItem("minecraft:red_tulip", 20, "种物"),
crystalItem("minecraft:orange_tulip", 20, "种物"),
crystalItem("minecraft:white_tulip", 20, "种物"),
crystalItem("minecraft:pink_tulip", 20, "种物")],
[crystalItem("minecraft:sunflower", 20, "种物"),
crystalItem("minecraft:rose_bush", 20, "种物"),
crystalItem("minecraft:peony", 20, "种物"),
crystalItem("minecraft:lilac", 20, "种物")],
[crystalItem("minecraft:glow_lichen", 20, "种物")],
[crystalItem("minecraft:clay_ball", 20, "种物")],
[crystalItem("minecraft:brick", 20, "种物")],
[crystalItem("minecraft:glow_berries", 20, "种物")],
[crystalItem("minecraft:nether_wart", 20, "种物")],
[crystalItem("minecraft:twisting_vines", 40, "种物")],
[crystalItem("minecraft:weeping_vines", 40, "种物")],
[crystalItem("minecraft:big_dripleaf", 40, "种物")],
[crystalItem("minecraft:crimson_fungus", 40, "种物")],
[crystalItem("minecraft:warped_fungus", 40, "种物")],
[crystalItem("minecraft:chorus_fruit", 40, "种物")],
[crystalItem("minecraft:lily_pad", 40, "种物")],
[crystalItem("minecraft:wither_rose", 75, "种物")]]);

// Resource
crystal.addRecipe([], [[crystalItem("minecraft:cobblestone", 0, "资源"),
crystalItem("minecraft:diorite", 0, "资源"),
crystalItem("minecraft:andesite", 0, "资源"),
crystalItem("minecraft:granite", 0, "资源")],
[crystalItem("minecraft:dirt", 0, "资源")],
[crystalItem("minecraft:stone", 10, "资源")],
[crystalItem("minecraft:gravel", 10, "资源")],
[crystalItem("minecraft:sand", 10, "资源"),
crystalItem("minecraft:red_sand", 10, "资源")],
[crystalItem("minecraft:oak_log", 10, "资源"),
crystalItem("minecraft:spruce_log", 10, "资源"),
crystalItem("minecraft:birch_log", 10, "资源"),
crystalItem("minecraft:jungle_log", 10, "资源"),
crystalItem("minecraft:acacia_log", 10, "资源"),
crystalItem("minecraft:dark_oak_log", 10, "资源")],
[crystalItem("minecraft:moss_block", 10, "资源")],
[crystalItem("minecraft:white_wool", 10, "资源"),
crystalItem("minecraft:orange_wool", 10, "资源"),
crystalItem("minecraft:magenta_wool", 10, "资源"),
crystalItem("minecraft:light_blue_wool", 10, "资源"),
crystalItem("minecraft:yellow_wool", 10, "资源"),
crystalItem("minecraft:lime_wool", 10, "资源"),
crystalItem("minecraft:pink_wool", 10, "资源"),
crystalItem("minecraft:gray_wool", 10, "资源"),
crystalItem("minecraft:light_gray_wool", 10, "资源"),
crystalItem("minecraft:cyan_wool", 10, "资源"),
crystalItem("minecraft:purple_wool", 10, "资源"),
crystalItem("minecraft:blue_wool", 10, "资源"),
crystalItem("minecraft:brown_wool", 10, "资源"),
crystalItem("minecraft:green_wool", 10, "资源"),
crystalItem("minecraft:red_wool", 10, "资源"),
crystalItem("minecraft:black_wool", 10, "资源")],
[crystalItem("minecraft:glass", 10, "资源"),
crystalItem("minecraft:white_stained_glass", 10, "资源"),
crystalItem("minecraft:orange_stained_glass", 10, "资源"),
crystalItem("minecraft:magenta_stained_glass", 10, "资源"),
crystalItem("minecraft:light_blue_stained_glass", 10, "资源"),
crystalItem("minecraft:yellow_stained_glass", 10, "资源"),
crystalItem("minecraft:lime_stained_glass", 10, "资源"),
crystalItem("minecraft:pink_stained_glass", 10, "资源"),
crystalItem("minecraft:gray_stained_glass", 10, "资源"),
crystalItem("minecraft:light_gray_stained_glass", 10, "资源"),
crystalItem("minecraft:cyan_stained_glass", 10, "资源"),
crystalItem("minecraft:purple_stained_glass", 10, "资源"),
crystalItem("minecraft:blue_stained_glass", 10, "资源"),
crystalItem("minecraft:brown_stained_glass", 10, "资源"),
crystalItem("minecraft:green_stained_glass", 10, "资源"),
crystalItem("minecraft:red_stained_glass", 10, "资源"),
crystalItem("minecraft:black_stained_glass", 10, "资源")],
[crystalItem("minecraft:smooth_stone", 10, "资源")],
[crystalItem("minecraft:bricks", 10, "资源")],
[crystalItem("minecraft:netherrack", 10, "资源")],
[crystalItem("minecraft:soul_sand", 10, "资源")],
[crystalItem("minecraft:basalt", 10, "资源")],
[crystalItem("minecraft:white_terracotta", 10, "资源"),
crystalItem("minecraft:orange_terracotta", 10, "资源"),
crystalItem("minecraft:magenta_terracotta", 10, "资源"),
crystalItem("minecraft:light_blue_terracotta", 10, "资源"),
crystalItem("minecraft:yellow_terracotta", 10, "资源"),
crystalItem("minecraft:lime_terracotta", 10, "资源"),
crystalItem("minecraft:pink_terracotta", 10, "资源"),
crystalItem("minecraft:gray_terracotta", 10, "资源"),
crystalItem("minecraft:light_gray_terracotta", 10, "资源"),
crystalItem("minecraft:cyan_terracotta", 10, "资源"),
crystalItem("minecraft:purple_terracotta", 10, "资源"),
crystalItem("minecraft:blue_terracotta", 10, "资源"),
crystalItem("minecraft:brown_terracotta", 10, "资源"),
crystalItem("minecraft:green_terracotta", 10, "资源"),
crystalItem("minecraft:red_terracotta", 10, "资源"),
crystalItem("minecraft:black_terracotta", 10, "资源"),
crystalItem("minecraft:terracotta", 10, "资源")],
[crystalItem("minecraft:deepslate", 10, "资源"),
crystalItem("minecraft:cobbled_deepslate", 10, "资源")],
[crystalItem("minecraft:tuff", 10, "资源")],
[crystalItem("minecraft:mossy_cobblestone", 20, "资源")],
[crystalItem("minecraft:obsidian", 20, "资源")],
[crystalItem("minecraft:ice", 20, "资源")],
[crystalItem("minecraft:white_concrete", 20, "资源"),
crystalItem("minecraft:orange_concrete", 20, "资源"),
crystalItem("minecraft:magenta_concrete", 20, "资源"),
crystalItem("minecraft:light_blue_concrete", 20, "资源"),
crystalItem("minecraft:yellow_concrete", 20, "资源"),
crystalItem("minecraft:lime_concrete", 20, "资源"),
crystalItem("minecraft:pink_concrete", 20, "资源"),
crystalItem("minecraft:gray_concrete", 20, "资源"),
crystalItem("minecraft:light_gray_concrete", 20, "资源"),
crystalItem("minecraft:cyan_concrete", 20, "资源"),
crystalItem("minecraft:purple_concrete", 20, "资源"),
crystalItem("minecraft:blue_concrete", 20, "资源"),
crystalItem("minecraft:brown_concrete", 20, "资源"),
crystalItem("minecraft:green_concrete", 20, "资源"),
crystalItem("minecraft:red_concrete", 20, "资源"),
crystalItem("minecraft:black_concrete", 20, "资源")],
[crystalItem("minecraft:white_concrete_powder", 20, "资源"),
crystalItem("minecraft:orange_concrete_powder", 20, "资源"),
crystalItem("minecraft:magenta_concrete_powder", 20, "资源"),
crystalItem("minecraft:light_blue_concrete_powder", 20, "资源"),
crystalItem("minecraft:yellow_concrete_powder", 20, "资源"),
crystalItem("minecraft:lime_concrete_powder", 20, "资源"),
crystalItem("minecraft:pink_concrete_powder", 20, "资源"),
crystalItem("minecraft:gray_concrete_powder", 20, "资源"),
crystalItem("minecraft:light_gray_concrete_powder", 20, "资源"),
crystalItem("minecraft:cyan_concrete_powder", 20, "资源"),
crystalItem("minecraft:purple_concrete_powder", 20, "资源"),
crystalItem("minecraft:blue_concrete_powder", 20, "资源"),
crystalItem("minecraft:brown_concrete_powder", 20, "资源"),
crystalItem("minecraft:green_concrete_powder", 20, "资源"),
crystalItem("minecraft:red_concrete_powder", 20, "资源"),
crystalItem("minecraft:black_concrete_powder", 20, "资源")],
[crystalItem("minecraft:blackstone", 20, "资源")],
[crystalItem("minecraft:dripstone_block", 20, "资源")],
[crystalItem("minecraft:prismarine", 20, "资源")],
[crystalItem("minecraft:soul_soil", 40, "资源")],
[crystalItem("minecraft:purpur_block", 40, "资源")],
[crystalItem("minecraft:mycelium", 40, "资源")],
[crystalItem("minecraft:end_stone", 40, "资源")],
[crystalItem("minecraft:magma_block", 40, "资源")],
[crystalItem("minecraft:nether_wart_block", 40, "资源")],
[crystalItem("minecraft:warped_wart_block", 40, "资源")],
[crystalItem("minecraft:shroomlight", 40, "资源")],
[crystalItem("minecraft:podzol", 40, "资源")],
[crystalItem("minecraft:blue_ice", 75, "资源")],
[crystalItem("minecraft:crimson_stem", 75, "资源")],
[crystalItem("minecraft:warped_stem", 75, "资源")],
[crystalItem("minecraft:crying_obsidian", 75, "资源")],
[crystalItem("minecraft:calcite", 75, "资源")],
[crystalItem("minecraft:rooted_dirt", 75, "资源")]]);


// Mob
crystal.addRecipe([], [[crystalItem("minecraft:stick", 0, "生物")],
[crystalItem("minecraft:string", 10, "生物")],
[crystalItem("minecraft:rotten_flesh", 10, "生物")],
[crystalItem("minecraft:bone", 10, "生物")],
[crystalItem("minecraft:spider_eye", 10, "生物")],
[crystalItem("minecraft:arrow", 10, "生物")],
[crystalItem("minecraft:feather", 10, "生物")],
[crystalItem("minecraft:porkchop", 10, "生物")],
[crystalItem("minecraft:beef", 10, "生物")],
[crystalItem("minecraft:chicken", 10, "生物")],
[crystalItem("minecraft:rabbit", 10, "生物")],
[crystalItem("minecraft:slime_ball", 10, "生物")],
[crystalItem("minecraft:egg", 10, "生物")],
[crystalItem("minecraft:leather", 10, "生物")],
[crystalItem("minecraft:rabbit_hide", 10, "生物")],
[crystalItem("minecraft:white_dye", 10, "生物"),
crystalItem("minecraft:orange_dye", 10, "生物"),
crystalItem("minecraft:magenta_dye", 10, "生物"),
crystalItem("minecraft:light_blue_dye", 10, "生物"),
crystalItem("minecraft:yellow_dye", 10, "生物"),
crystalItem("minecraft:lime_dye", 10, "生物"),
crystalItem("minecraft:pink_dye", 10, "生物"),
crystalItem("minecraft:gray_dye", 10, "生物"),
crystalItem("minecraft:light_gray_dye", 10, "生物"),
crystalItem("minecraft:cyan_dye", 10, "生物"),
crystalItem("minecraft:purple_dye", 10, "生物"),
crystalItem("minecraft:blue_dye", 10, "生物"),
crystalItem("minecraft:brown_dye", 10, "生物"),
crystalItem("minecraft:green_dye", 10, "生物"),
crystalItem("minecraft:red_dye", 10, "生物"),
crystalItem("minecraft:black_dye", 10, "生物")],
[crystalItem("minecraft:poisonous_potato", 10, "生物")],
[crystalItem("minecraft:mutton", 10, "生物")],
[crystalItem("minecraft:salmon", 10, "生物")],
[crystalItem("minecraft:cod", 10, "生物")],
[crystalItem("minecraft:cocoa_beans", 10, "生物")],
[crystalItem("minecraft:gunpowder", 10, "生物")],
[crystalItem("minecraft:honey_bottle", 20, "生物")],
[crystalItem("minecraft:blaze_rod", 20, "生物")],
[crystalItem("minecraft:ender_pearl", 20, "生物")],
[crystalItem("minecraft:rabbit_foot", 20, "生物")],
[crystalItem("minecraft:honeycomb", 20, "生物")],
[crystalItem("minecraft:ink_sac", 20, "生物")],
[crystalItem("minecraft:glow_ink_sac", 20, "生物")],
[crystalItem("minecraft:pufferfish", 20, "生物")],
[crystalItem("minecraft:tropical_fish", 40, "生物")],
[crystalItem("minecraft:ghast_tear", 40, "生物")],
[crystalItem("minecraft:magma_cream", 40, "生物")],
[crystalItem("minecraft:nautilus_shell", 40, "生物")],
[crystalItem("minecraft:turtle_egg", 40, "生物")],
[crystalItem("minecraft:wither_skeleton_skull", 40, "生物")],
[crystalItem("minecraft:phantom_membrane", 75, "生物")]]);

// Misc
crystal.addRecipe([], [[crystalItem("minecraft:iron_ingot", 0, "杂项")],
[crystalItem("minecraft:copper_ingot", 0, "杂项")],
[crystalItem("minecraft:coal", 0, "杂项"),
crystalItem("minecraft:charcoal", 0, "杂项")],
[crystalItem("minecraft:pointed_dripstone", 10, "杂项")],
[crystalItem("minecraft:gold_ingot", 10, "杂项")],
[crystalItem("minecraft:redstone", 10, "杂项")],
[crystalItem("minecraft:emerald", 10, "杂项")],
[crystalItem("minecraft:lapis_lazuli", 10, "杂项")],
[crystalItem("minecraft:amethyst_shard", 10, "杂项")],
[crystalItem("minecraft:diamond", 10, "杂项")],
[crystalItem("minecraft:spore_blossom", 10, "杂项")],
[crystalItem("minecraft:glowstone_dust", 20, "杂项")],
[crystalItem("minecraft:quartz", 20, "杂项")],
[crystalItem("minecraft:name_tag", 20, "杂项")],
[crystalItem("minecraft:prismarine_shard", 40, "杂项")],
[crystalItem("minecraft:prismarine_crystals", 40, "杂项")],
[crystalItem("minecraft:chorus_flower", 40, "杂项")],
[crystalItem("minecraft:dead_brain_coral", 40, "杂项"),
crystalItem("minecraft:dead_bubble_coral", 40, "杂项"),
crystalItem("minecraft:dead_fire_coral", 40, "杂项"),
crystalItem("minecraft:dead_horn_coral", 40, "杂项"),
crystalItem("minecraft:dead_tube_coral", 40, "杂项"),
crystalItem("minecraft:dead_tube_coral_fan", 40, "杂项"),
crystalItem("minecraft:dead_brain_coral_fan", 40, "杂项"),
crystalItem("minecraft:dead_bubble_coral_fan", 40, "杂项"),
crystalItem("minecraft:dead_fire_coral_fan", 40, "杂项"),
crystalItem("minecraft:dead_horn_coral_fan", 40, "杂项")],
[crystalItem("minecraft:brain_coral", 40, "杂项"),
crystalItem("minecraft:bubble_coral", 40, "杂项"),
crystalItem("minecraft:fire_coral", 40, "杂项"),
crystalItem("minecraft:horn_coral", 40, "杂项"),
crystalItem("minecraft:tube_coral", 40, "杂项"),
crystalItem("minecraft:tube_coral_fan", 40, "杂项"),
crystalItem("minecraft:brain_coral_fan", 40, "杂项"),
crystalItem("minecraft:bubble_coral_fan", 40, "杂项"),
crystalItem("minecraft:fire_coral_fan", 40, "杂项"),
crystalItem("minecraft:horn_coral_fan", 40, "杂项")],
[crystalItem("minecraft:totem_of_undying", 40, "杂项")],
[crystalItem("minecraft:saddle", 40, "杂项")],
[crystalItem("minecraft:cobweb", 40, "杂项")],
[crystalItem("minecraft:sponge", 75, "杂项")],
[crystalItem("minecraft:nether_star", 75, "杂项")],
[crystalItem("minecraft:trident", 75, "杂项")],
[crystalItem("minecraft:music_disc_13", 90, "杂项"),
crystalItem("minecraft:music_disc_cat", 90, "杂项"),
crystalItem("minecraft:music_disc_blocks", 90, "杂项"),
crystalItem("minecraft:music_disc_chirp", 90, "杂项"),
crystalItem("minecraft:music_disc_far", 90, "杂项"),
crystalItem("minecraft:music_disc_mall", 90, "杂项"),
crystalItem("minecraft:music_disc_mellohi", 90, "杂项"),
crystalItem("minecraft:music_disc_stal", 90, "杂项"),
crystalItem("minecraft:music_disc_strad", 90, "杂项"),
crystalItem("minecraft:music_disc_ward", 90, "杂项"),
crystalItem("minecraft:music_disc_11", 90, "杂项"),
crystalItem("minecraft:music_disc_wait", 90, "杂项"),
crystalItem("minecraft:music_disc_otherside", 90, "杂项"),
crystalItem("minecraft:music_disc_pigstep", 90, "杂项")]]);

// Add category
JEI.addCategory(crystal);
