import mods.jei.category.Custom;
import mods.jei.JEI;
import mods.jei.category.SimpleJeiCategory;
import mods.jei.category.JeiCategory;
import crafttweaker.api.text.TextComponent;
import mods.jei.component.JeiDrawable;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.item.IItemStack;

// ** Made by DrIceTea **


// Book

//craftingTable.addShaped("book_latest", <item:patchouli:guide_book>.withTag({"patchouli:book": "patchouli:the_vault_everything" as string}), [<item:patchouli:guide_book>.withTag({"patchouli:book": "patchouli:the_vault_main_guide" as string})]);

//craftingTable.addShaped("book_legacy", <item:patchouli:guide_book>.withTag({"patchouli:book": "patchouli:the_vault_main_guide" as string}), [<item:patchouli:guide_book>.withTag({"patchouli:book": "patchouli:the_vault_everything" as string})]);


// Item Infos

mods.jei.JEI.addDescription(<item:the_vault:vault_compass>, ("它只在宝库世界中生效。解锁研究“宝库指南针”后，在宝库世界中，这个指南针会默认指向返回传送门的位置。你也可以对着某个方块潜行长按右键，将宝库指南针的指向绑定为该方块，但绑定后在此宝库内无法再指向返回传送门。"));

mods.jei.JEI.addDescription(<item:the_vault:old_notes>, ("记录了一些奇怪挑战的古老笔记。完成它的挑战或许能解锁某些奇特的幻形……"));

mods.jei.JEI.addDescription(<item:the_vault:vault_relic>.withTag({VaultModelId: "the_vault:relic/cupcake/statue" as string}), ("首次成功组装此遗物时，会永久增加30秒宝库探索时间。你也可以将重复的遗物熔炼成苦涩柠檬。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_relic>.withTag({VaultModelId: "the_vault:relic/dragon/statue" as string}), ("首次成功组装此遗物时，会永久增加30秒宝库探索时间。你也可以将重复的遗物熔炼成苦涩柠檬。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_relic>.withTag({VaultModelId: "the_vault:relic/elemental/statue" as string}), ("首次成功组装此遗物时，会永久增加30秒宝库探索时间。你也可以将重复的遗物熔炼成苦涩柠檬。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_relic>.withTag({VaultModelId: "the_vault:relic/miner/statue" as string}), ("首次成功组装此遗物时，会永久增加30秒宝库探索时间。你也可以将重复的遗物熔炼成苦涩柠檬。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_relic>.withTag({VaultModelId: "the_vault:relic/nazar/statue" as string}), ("首次成功组装此遗物时，会永久增加30秒宝库探索时间。你也可以将重复的遗物熔炼成苦涩柠檬。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_relic>.withTag({VaultModelId: "the_vault:relic/richity/statue" as string}), ("首次成功组装此遗物时，会永久增加30秒宝库探索时间。你也可以将重复的遗物熔炼成苦涩柠檬。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_relic>.withTag({VaultModelId: "the_vault:relic/twitch/statue" as string}), ("首次成功组装此遗物时，会永久增加30秒宝库探索时间。你也可以将重复的遗物熔炼成苦涩柠檬。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_relic>.withTag({VaultModelId: "the_vault:relic/warrior/statue" as string}), ("首次成功组装此遗物时，会永久增加30秒宝库探索时间。你也可以将重复的遗物熔炼成苦涩柠檬。"));

// Keys

var treasureKey = JeiCategory.create<Custom>("treasure_key", new TextComponent("宝藏钥匙"), <item:the_vault:unidentified_treasure_key>, [<item:the_vault:unidentified_treasure_key>]) as Custom;
treasureKey.background = JeiDrawable.blank(180, 30) as JeiDrawable;

for i in 0 .. 9 {
    treasureKey.addDrawable(1 + (i * 20), 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 9 {
    treasureKey.addSlot(i, 2 + (i * 20), 6, false);
}

treasureKey.addRecipe([<item:the_vault:key_iskallium>, <item:the_vault:key_gorginite>, <item:the_vault:key_sparkletine>, <item:the_vault:key_ashium>, <item:the_vault:key_bomignite>, <item:the_vault:key_tubium>, <item:the_vault:key_upaline>, <item:the_vault:key_petzanite>, <item:the_vault:key_xenium>], []);
JEI.addCategory(treasureKey);

// Mystery Box Recipes
var mysteryBox = JeiCategory.create<Custom>("mystery_box", new TextComponent("神秘盒子"), <item:the_vault:mystery_box>, [<item:the_vault:mystery_box>]) as Custom;
mysteryBox.background = JeiDrawable.blank(175, 30) as JeiDrawable;

mysteryBox.addDrawable(26, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
mysteryBox.addDrawable(47, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
mysteryBox.addDrawable(68, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
mysteryBox.addDrawable(89, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
mysteryBox.addDrawable(110, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
mysteryBox.addDrawable(131, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

mysteryBox.addSlot(0, 27, 6, false);
mysteryBox.addSlot(1, 48, 6, false);
mysteryBox.addSlot(2, 69, 6, false);
mysteryBox.addSlot(3, 90, 6, false);
mysteryBox.addSlot(4, 111, 6, false);
mysteryBox.addSlot(5, 132, 6, false);

function mysteryBoxItem(item as string, num as string, chance as float) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"数量: " + num + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"概率: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}});
}

mysteryBox.addRecipe([mysteryBoxItem("minecraft:diamond", "1 - 8", 38.96),
mysteryBoxItem("minecraft:emerald", "1 - 8", 38.96),
mysteryBoxItem("the_vault:gem_larimar", "1 - 8", 19.48),
mysteryBoxItem("the_vault:gem_echo", "1", 1.22),
mysteryBoxItem("the_vault:vault_platinum", "1", 1.22),
mysteryBoxItem("the_vault:gem_pog", "1 - 2", 0.15)], []);

JEI.addCategory(mysteryBox);

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

// Relic Fragments

var relicFragments = JeiCategory.create<Custom>("relic_fragments", new TextComponent("遗物碎片"), <item:the_vault:unidentified_relic_fragment>, [<item:the_vault:unidentified_relic_fragment>, <item:the_vault:relic_booster_pack>.withTag({display: {Lore: ["[{\"text\":\"综合概率: 10%\",\"italic\":false,\"color\":\"gray\"}]"]}})]) as Custom;
relicFragments.background = JeiDrawable.blank(115, 175) as JeiDrawable;

for i in 0 .. 8 {
    relicFragments.addDrawable(4, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    relicFragments.addDrawable(25, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    relicFragments.addDrawable(46, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    relicFragments.addDrawable(67, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    relicFragments.addDrawable(88, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 8 {
    for column in 0 .. 5 {
        relicFragments.addSlot(5 * i + column, 5 + (column * 21), 6 + (i * 21), false);
    }
}

function relicItem(relicid as string, num as int) as IItemStack {
  return <item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicid + "/frag" + num});
}

relicFragments.addRecipe([relicItem('cupcake', 1), 
relicItem('cupcake', 2), 
relicItem('cupcake', 3), 
relicItem('cupcake', 4), 
relicItem('cupcake', 5), 
relicItem('dragon', 1), 
relicItem('dragon', 2), 
relicItem('dragon', 3), 
relicItem('dragon', 4), 
relicItem('dragon', 5), 
relicItem('elemental', 1), 
relicItem('elemental', 2), 
relicItem('elemental', 3), 
relicItem('elemental', 4), 
relicItem('elemental', 5), 
relicItem('miner', 1), 
relicItem('miner', 2), 
relicItem('miner', 3), 
relicItem('miner', 4), 
relicItem('miner', 5), 
relicItem('nazar', 1), 
relicItem('nazar', 2), 
relicItem('nazar', 3), 
relicItem('nazar', 4), 
relicItem('nazar', 5), 
relicItem('richity', 1), 
relicItem('richity', 2), 
relicItem('richity', 3), 
relicItem('richity', 4), 
relicItem('richity', 5), 
relicItem('twitch', 1), 
relicItem('twitch', 2), 
relicItem('twitch', 3), 
relicItem('twitch', 4), 
relicItem('twitch', 5), 
relicItem('warrior', 1), 
relicItem('warrior', 2), 
relicItem('warrior', 3), 
relicItem('warrior', 4), 
relicItem('warrior', 5)], []);

JEI.addCategory(relicFragments);

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

// Vendor

var vendor = JeiCategory.create<Custom>("vendor_shop", new TextComponent("商店基座"), <item:the_vault:shop_pedestal>, [<item:the_vault:shop_pedestal>]) as Custom;
vendor.background = JeiDrawable.blank(175, 135) as JeiDrawable;

for i in 0 .. 5 {
    vendor.addDrawable(4, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    vendor.addDrawable(26, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    vendor.addDrawable(47, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    vendor.addDrawable(68, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    vendor.addDrawable(89, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    vendor.addDrawable(110, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    vendor.addDrawable(131, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    vendor.addDrawable(152, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 5 {
    for column in 0 .. 8 {
        vendor.addSlot(8 * i + column, 6 + (column * 21), 6 + (i * 21), false);
    }
}

function vendorItem(item as string, minPrice as int, maxPrice as int, chance as int, level as string) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"宝库等级: " + level + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + chance + "\",\"italic\":false,\"color\":\"gray\"}]"]}});
}

vendor.addRecipe([vendorItem("sophisticatedbackpacks:iron_backpack", 8, 12, 40, "0-29"),
vendorItem("the_vault:sword", 12, 16, 80, "0-29"),
vendorItem("the_vault:axe", 12, 16, 80, "0-29"),
vendorItem("the_vault:helmet", 12, 16, 80, "0-29"),
vendorItem("the_vault:chestplate", 12, 16, 80, "0-29"),
vendorItem("the_vault:leggings", 12, 16, 80, "0-29"),
vendorItem("the_vault:boots", 12, 16, 80, "0-29"),
vendorItem("the_vault:shield", 12, 16, 65, "0-29"),
vendorItem("the_vault:wand", 12, 16, 65, "0-29"),
vendorItem("the_vault:focus", 12, 16, 65, "0-29"),
vendorItem("the_vault:magnet", 12, 16, 65, "0-29"),
vendorItem("the_vault:knowledge_star", 12, 16, 40, "0-29")], []);

vendor.addRecipe([vendorItem("sophisticatedbackpacks:gold_backpack", 16, 24, 40, "30-49"),
vendorItem("the_vault:sword", 16, 24, 80, "30-49"),
vendorItem("the_vault:axe", 16, 24, 80, "30-49"),
vendorItem("the_vault:helmet", 16, 24, 80, "30-49"),
vendorItem("the_vault:chestplate", 16, 24, 80, "30-49"),
vendorItem("the_vault:leggings", 16, 24, 80, "30-49"),
vendorItem("the_vault:boots", 16, 24, 80, "30-49"),
vendorItem("the_vault:shield", 16, 24, 65, "30-49"),
vendorItem("the_vault:wand", 16, 24, 65, "30-49"),
vendorItem("the_vault:focus", 16, 24, 65, "30-49"),
vendorItem("the_vault:magnet", 16, 24, 65, "30-49"),
vendorItem("the_vault:inscription", 20, 32, 20, "30-49"),
vendorItem("the_vault:jewel", 8, 24, 80, "30-49"),
vendorItem("the_vault:sour_orange", 16, 24, 40, "30-49"),
vendorItem("the_vault:trinket_scrap", 20, 32, 40, "30-49"),
vendorItem("the_vault:trinket", 28, 64, 20, "30-49"),
vendorItem("the_vault:artifact_fragment", 24, 64, 10, "30-49"),
vendorItem("the_vault:knowledge_star", 12, 16, 40, "30-49"),
vendorItem("the_vault:vault_catalyst", 8, 12, 100, "30-49"),
vendorItem("the_vault:vault_catalyst_chaos", 32, 64, 20, "30-49"),
vendorItem("the_vault:crystal_seal_cake", 16, 32, 40, "30-49"),
vendorItem("the_vault:mystery_egg", 4, 8, 100, "30-49"),
vendorItem("the_vault:bitter_lemon", 8, 16, 80, "30-49"),
vendorItem("the_vault:hardened_chest_scroll", 16, 32, 20, "30-49"),
vendorItem("the_vault:flesh_chest_scroll", 32, 64, 10, "30-49"),
vendorItem("the_vault:enigma_chest_scroll", 64, 128, 4, "30-49"),
vendorItem("the_vault:mod_box", 6, 12, 100, "30-49")], []);

vendor.addRecipe([vendorItem("sophisticatedbackpacks:iron_backpack", 8, 12, 40, "50-64"),
vendorItem("sophisticatedbackpacks:gold_backpack", 16, 24, 40, "50-64"),
vendorItem("sophisticatedbackpacks:diamond_backpack", 24, 48, 20, "50-64"),
vendorItem("the_vault:sword", 24, 32, 80, "50-64"),
vendorItem("the_vault:axe", 24, 32, 80, "50-64"),
vendorItem("the_vault:helmet", 24, 32, 80, "50-64"),
vendorItem("the_vault:chestplate", 24, 32, 80, "50-64"),
vendorItem("the_vault:leggings", 24, 32, 80, "50-64"),
vendorItem("the_vault:boots", 24, 32, 80, "50-64"),
vendorItem("the_vault:shield", 24, 32, 65, "50-64"),
vendorItem("the_vault:wand", 24, 32, 65, "50-64"),
vendorItem("the_vault:focus", 24, 32, 65, "50-64"),
vendorItem("the_vault:magnet", 24, 32, 65, "50-64"),
vendorItem("the_vault:inscription", 24, 48, 20, "50-64"),
vendorItem("the_vault:jewel", 8, 24, 80, "50-64"),
vendorItem("the_vault:sour_orange", 20, 32, 20, "50-64"),
vendorItem("the_vault:trinket_scrap", 20, 32, 40, "50-64"),
vendorItem("the_vault:trinket", 32, 64, 20, "50-64"),
vendorItem("the_vault:artifact_fragment", 24, 64, 10, "50-64"),
vendorItem("the_vault:unidentified_treasure_key", 32, 64, 10, "50-64"),
vendorItem("the_vault:opportunistic_focus", 24, 32, 20, "50-64"),
vendorItem("the_vault:resilient_focus", 16, 32, 40, "50-64"),
vendorItem("the_vault:fundamental_focus", 4, 12, 65, "50-64"),
vendorItem("the_vault:lost_bounty", 24, 64, 20, "50-64"),
vendorItem("the_vault:key_piece", 4, 8, 100, "50-64"),
vendorItem("the_vault:vault_catalyst", 8, 12, 100, "50-64"),
vendorItem("the_vault:vault_catalyst_chaos", 32, 64, 20, "50-64"),
vendorItem("the_vault:crystal_seal_cake", 16, 32, 40, "50-64"),
vendorItem("the_vault:spicy_hearty_burger", 8, 16, 40, "50-64"),
vendorItem("the_vault:mystery_egg", 4, 8, 100, "50-64"),
vendorItem("the_vault:bitter_lemon", 8, 16, 80, "50-64"),
vendorItem("the_vault:hardened_chest_scroll", 16, 32, 20, "50-64"),
vendorItem("the_vault:flesh_chest_scroll", 32, 64, 10, "50-64"),
vendorItem("the_vault:enigma_chest_scroll", 64, 128, 4, "50-64"),
vendorItem("the_vault:mod_box", 6, 12, 100, "50-64")], []);

vendor.addRecipe([vendorItem("sophisticatedbackpacks:iron_backpack", 8, 12, 40, "65+"),
vendorItem("sophisticatedbackpacks:gold_backpack", 16, 24, 40, "65+"),
vendorItem("sophisticatedbackpacks:diamond_backpack", 24, 48, 40, "65+"),
vendorItem("the_vault:sword", 24, 32, 80, "65+"),
vendorItem("the_vault:axe", 24, 32, 80, "65+"),
vendorItem("the_vault:helmet", 24, 32, 80, "65+"),
vendorItem("the_vault:chestplate", 24, 32, 80, "65+"),
vendorItem("the_vault:leggings", 24, 32, 80, "65+"),
vendorItem("the_vault:boots", 24, 32, 80, "65+"),
vendorItem("the_vault:shield", 24, 32, 65, "65+"),
vendorItem("the_vault:wand", 24, 32, 65, "65+"),
vendorItem("the_vault:focus", 24, 32, 65, "65+"),
vendorItem("the_vault:magnet", 24, 32, 65, "65+"),
vendorItem("the_vault:inscription", 24, 48, 20, "65+"),
vendorItem("the_vault:jewel", 8, 24, 80, "65+"),
vendorItem("the_vault:sour_orange", 20, 32, 20, "65+"),
vendorItem("the_vault:trinket_scrap", 20, 32, 40, "65+"),
vendorItem("the_vault:trinket", 32, 64, 20, "65+"),
vendorItem("the_vault:artifact_fragment", 24, 64, 10, "65+"),
vendorItem("the_vault:unidentified_treasure_key", 32, 64, 10, "65+"),
vendorItem("the_vault:opportunistic_focus", 24, 32, 20, "65+"),
vendorItem("the_vault:resilient_focus", 16, 32, 40, "65+"),
vendorItem("the_vault:fundamental_focus", 4, 12, 65, "65+"),
vendorItem("the_vault:lost_bounty", 24, 64, 20, "65+"),
vendorItem("the_vault:key_piece", 4, 8, 100, "65+"),
vendorItem("the_vault:vault_catalyst", 8, 12, 100, "65+"),
vendorItem("the_vault:vault_catalyst_chaos", 32, 64, 20, "65+"),
vendorItem("the_vault:crystal_seal_cake", 16, 32, 40, "65+"),
vendorItem("the_vault:spicy_hearty_burger", 8, 16, 40, "65+"),
vendorItem("the_vault:mystery_egg", 4, 8, 100, "65+"),
vendorItem("the_vault:waning_focus", 8, 16, 40, "65+"),
vendorItem("the_vault:waxing_focus", 8, 16, 40, "65+"),
vendorItem("the_vault:bitter_lemon", 8, 16, 80, "65+"),
vendorItem("the_vault:hardened_chest_scroll", 16, 32, 20, "65+"),
vendorItem("the_vault:flesh_chest_scroll", 32, 64, 10, "65+"),
vendorItem("the_vault:enigma_chest_scroll", 64, 128, 4, "65+"),
vendorItem("the_vault:mod_box", 6, 12, 100, "65+")], []);

JEI.addIngredient(<item:the_vault:shop_pedestal>);
JEI.addCategory(vendor);

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
