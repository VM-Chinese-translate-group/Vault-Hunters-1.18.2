import mods.jei.category.Custom;
import mods.jei.JEI;
import mods.jei.category.SimpleJeiCategory;
import mods.jei.category.JeiCategory;
import crafttweaker.api.text.TextComponent;
import mods.jei.component.JeiDrawable;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.item.IItemStack;

// ** Made by DrIceTea **

// 黑市  soul_shard.json omega_soul_shard.json
// 商店  shop_pedestal.json
// 宝库锻炉  recipes\gear_recipes.json
// 饰品锻炉  recipes\trinket_recipes.json
// 工具装配台  recipes\tool_recipes.json
// 珠宝  recipes\jewel_crafting_recipes.json



// 黑市  soul_shard.json omega_soul_shard.json
var blackMarket = JeiCategory.create<Custom>("black_market", new TextComponent("黑市"), <item:the_vault:black_market>, [<item:the_vault:black_market>]) as Custom;
blackMarket.background = JeiDrawable.blank(180, 170) as JeiDrawable;

for y in 0 .. 8 {
    for x in 0 .. 9 {
        blackMarket.addDrawable(1 + (x * 20), 5 + (y * 20), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    }
}
for y in 0 .. 8 {
    for x in 0 .. 9 {
        blackMarket.addSlot(10 * y + x, 2 + (x * 20), 6 + (y * 20), false);
    }
}

function blackMarketUnknownItem(Price as int, levels as string) as IItemStack {
  return <item:the_vault:unknown_item>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"价格: " + Price + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"等级: " + levels + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]"]}}) * 1;
}
function blackMarketItem(item as string, minPrice as int, maxPrice as int, weight as int, quantity as int, levels as string) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + weight + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"等级: " + levels + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}
function blackMarketOmegaItem(item as string, minPrice as int, maxPrice as int, weight as int, OminPrice as int, OmaxPrice as int, Oweight as int, quantity as int, levels as string) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + weight + "\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最低价格: " + OminPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最高价格: " + OmaxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"权重: " + Oweight + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"等级: " + levels + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}
function blackMarketOmegaNbtItem(item as string, minPrice as int, maxPrice as int, weight as int, OminPrice as int, OmaxPrice as int, Oweight as int, quantity as int, levels as string) as IItemStack {
  return <item:${item}>.withTag({pool: "the_vault:black_market",display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + weight + "\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最低价格: " + OminPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最高价格: " + OmaxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"权重: " + Oweight + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\": 品质提升\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"等级: " + levels + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}
function blackMarketOmegaIdItem(item as string, itemid as string, minPrice as int, maxPrice as int, weight as int, OminPrice as int, OmaxPrice as int, Oweight as int, quantity as int, levels as string) as IItemStack {
  return <item:${item}>.withTag({id: itemid,display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + weight + "\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最低价格: " + OminPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最高价格: " + OmaxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"权重: " + Oweight + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"等级: " + levels + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}
function blackMarketOmegaEqItem(item as string, minPrice as int, maxPrice as int, weight as int, OminPrice as int, OmaxPrice as int, Oweight as int, quantity as int, levels as string) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + weight + "\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最低价格: " + OminPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最高价格: " + OmaxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"权重: " + Oweight + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\": 品质提升\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"等级: " + levels + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}
function blackMarketOmegaSItem(item as string, OminPrice as int, OmaxPrice as int, Oweight as int, quantity as int, levels as string) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最低价格: " + OminPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"最高价格: " + OmaxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"},{\"text\":\"权重: " + Oweight + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"等级: " + levels + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}

blackMarket.addRecipe([blackMarketUnknownItem(1500, "0-19"),
blackMarketItem("the_vault:plain_burger", 100, 300, 40, 1, "0-19"),
blackMarketItem("the_vault:cheese_burger", 400, 600, 25, 1, "0-19"),
blackMarketOmegaItem("the_vault:knowledge_star", 7200, 14400, 10, 1600, 3200, 24, 1, "0-19"),
blackMarketOmegaItem("the_vault:bitter_lemon", 2400, 4200, 8, 1200, 1600, 8, 1, "0-19"),
blackMarketItem("the_vault:vault_platinum", 1200, 2400, 16, 1, "0-19"),
blackMarketOmegaItem("the_vault:jewel_pouch", 1200, 3200, 20, 1200, 2400, 20, 1, "0-19"),
blackMarketOmegaEqItem("the_vault:helmet", 750, 1500, 24, 700, 1200, 32, 1, "0-19"),
blackMarketOmegaEqItem("the_vault:chestplate", 750, 1500, 24, 700, 1200, 32, 1, "0-19"),
blackMarketOmegaEqItem("the_vault:leggings", 750, 1500, 24, 700, 1200, 32, 1, "0-19"),
blackMarketOmegaEqItem("the_vault:boots", 750, 1500, 24, 700, 1200, 32, 1, "0-19"),
blackMarketOmegaEqItem("the_vault:sword", 750, 1500, 24, 700, 1200, 32, 1, "0-19"),
blackMarketOmegaEqItem("the_vault:axe", 750, 1500, 24, 500, 1000, 32, 1, "0-19"),
blackMarketOmegaEqItem("the_vault:shield", 750, 1500, 18, 700, 1200, 26, 1, "0-19"),
blackMarketOmegaEqItem("the_vault:wand", 750, 1500, 18, 700, 1200, 26, 1, "0-19"),
blackMarketOmegaEqItem("the_vault:magnet", 750, 1500, 24, 700, 1200, 32, 1, "0-19"),
blackMarketItem("the_vault:bounty_pearl", 600, 1200, 16, 1, "0-19"),
blackMarketOmegaSItem("the_vault:bounty_pearl", 1000, 1800, 16, 5, "0-19"),
blackMarketItem("minecraft:emerald", 120, 300, 64, 32, "0-19"),
blackMarketItem("minecraft:elytra", 600, 1800, 24, 1, "0-19"),
blackMarketItem("the_vault:black_chromatic_steel_nugget", 1200, 2400, 40, 4, "0-19"),
blackMarketItem("minecraft:wither_skeleton_skull", 300, 600, 24, 1, "0-19"),
blackMarketItem("the_vault:vault_diamond", 1800, 3000, 32, 4, "0-19"),
blackMarketOmegaSItem("the_vault:vault_diamond", 800, 1600, 64, 5, "0-19"),
blackMarketOmegaItem("the_vault:gem_pog", 3000, 4200, 8, 1600, 2000, 32, 1, "0-19"),
blackMarketOmegaItem("sophisticatedbackpacks:backpack", 4800, 7200, 8, 2000, 3600, 16, 1, "0-19"),
blackMarketItem("the_vault:chromatic_steel_ingot", 1200, 2400, 64, 6, "0-19"),
blackMarketItem("the_vault:repair_core", 900, 1500, 32, 1, "0-19")], []);

blackMarket.addRecipe([blackMarketUnknownItem(3600, "20-49"),
blackMarketItem("the_vault:double_cheese_burger", 300, 600, 40, 1, "20-49"),
blackMarketItem("the_vault:deluxe_cheese_burger", 600, 1000, 25, 1, "20-49"),
blackMarketOmegaSItem("the_vault:blank_key", 12000, 16000, 2, 1, "20-49"),
blackMarketOmegaSItem("the_vault:capstone_dungeon_hunter", 2400, 6000, 4, 1, "20-49"),
blackMarketOmegaSItem("the_vault:unidentified_artifact", 32000, 48000, 1, 1, "20-49"),
blackMarketOmegaItem("the_vault:knowledge_star", 7200, 14400, 16, 1600, 3200, 16, 1, "20-49"),
blackMarketItem("the_vault:repair_core", 1200, 1800, 32, 1, "20-49"),
blackMarketOmegaItem("the_vault:sour_orange", 6000, 12000, 2, 3000, 6000, 2, 1, "20-49"),
blackMarketOmegaItem("the_vault:bitter_lemon", 2400, 4200, 8, 1200, 1800, 8, 1, "20-49"),
blackMarketItem("the_vault:vault_platinum", 1200, 2400, 20, 1, "20-49"),
blackMarketItem("the_vault:mod_box", 1200, 2400, 32, 1, "20-49"),
blackMarketOmegaItem("the_vault:opportunistic_focus", 9600, 18000, 4, 4800, 10000, 4, 1, "20-49"),
blackMarketOmegaItem("the_vault:resilient_focus", 6000, 12000, 4, 3000, 6000, 4, 1, "20-49"),
blackMarketItem("the_vault:fundamental_focus", 2700, 4200, 16, 1, "20-49"),
blackMarketOmegaSItem("the_vault:fundamental_focus", 1600, 2400, 16, 3, "20-49"),
blackMarketOmegaItem("the_vault:trinket", 24000, 36000, 2, 12000, 20000, 2, 1, "20-49"),
blackMarketOmegaItem("the_vault:trinket_scrap", 12000, 24000, 4, 6000, 12000, 4, 1, "20-49"),
blackMarketItem("the_vault:phoenix_feather", 2400, 3600, 8, 1, "20-49"),
blackMarketOmegaSItem("the_vault:phoenix_feather", 1600, 2400, 8, 2, "20-49"),
blackMarketOmegaItem("the_vault:eye_of_avarice", 4500, 9000, 4, 2000, 3600, 4, 1, "20-49"),
blackMarketOmegaItem("the_vault:vault_catalyst_chaos", 18000, 36000, 4, 12000, 24000, 4, 1, "20-49"),
blackMarketOmegaItem("the_vault:jewel_pouch", 1600, 3200, 32, 1600, 3200, 24, 1, "20-49"),
blackMarketOmegaEqItem("the_vault:helmet", 1500, 2700, 32, 1000, 1600, 32, 1, "20-49"),
blackMarketOmegaEqItem("the_vault:chestplate", 1500, 2700, 32, 1000, 1600, 32, 1, "20-49"),
blackMarketOmegaEqItem("the_vault:leggings", 1500, 2700, 32, 1000, 1600, 32, 1, "20-49"),
blackMarketOmegaEqItem("the_vault:boots", 1500, 2700, 32, 1000, 1600, 32, 1, "20-49"),
blackMarketOmegaEqItem("the_vault:sword", 1500, 2700, 32, 1000, 1600, 32, 1, "20-49"),
blackMarketOmegaEqItem("the_vault:axe", 1500, 2700, 32, 1000, 1600, 32, 1, "20-49"),
blackMarketOmegaEqItem("the_vault:shield", 1500, 2700, 26, 1000, 1600, 26, 1, "20-49"),
blackMarketOmegaEqItem("the_vault:wand", 1500, 2700, 26, 1000, 1600, 26, 1, "20-49"),
blackMarketOmegaEqItem("the_vault:magnet", 1500, 2700, 32, 1000, 1600, 32, 1, "20-49"),
blackMarketItem("the_vault:crystal_seal_cake", 18000, 24000, 16, 1, "20-49"),
blackMarketItem("the_vault:mystery_egg", 600, 1200, 20, 1, "20-49"),
blackMarketItem("the_vault:mystery_hostile_egg", 1200, 2400, 8, 1, "20-49"),
blackMarketOmegaItem("the_vault:artifact_fragment", 6000, 12000, 2, 3000, 6000, 2, 1, "20-49"),
blackMarketItem("the_vault:wooden_chest_scroll", 1200, 2400, 4, 1, "20-49"),
blackMarketItem("the_vault:ornate_chest_scroll", 2400, 4800, 4, 1, "20-49"),
blackMarketItem("the_vault:living_chest_scroll", 2400, 4800, 4, 1, "20-49"),
blackMarketItem("the_vault:gilded_chest_scroll", 2400, 4800, 4, 1, "20-49"),
blackMarketItem("the_vault:bounty_pearl", 600, 1200, 16, 1, "20-49"),
blackMarketOmegaSItem("the_vault:bounty_pearl", 1000, 1800, 20, 5, "20-49"),
blackMarketOmegaNbtItem("the_vault:vault_catalyst_infused", 1800, 3600, 48, 1200, 2400, 48, 1, "20-49"),
blackMarketItem("the_vault:black_chromatic_steel_ingot", 1800, 3000, 40, 1, "20-49"),
blackMarketItem("the_vault:vault_diamond", 1800, 3000, 32, 4, "20-49"),
blackMarketOmegaItem("the_vault:gem_pog", 3000, 4200, 8, 1600, 2000, 8, 1, "20-49"),
blackMarketOmegaItem("sophisticatedbackpacks:backpack", 4800, 7200, 8, 2000, 3600, 8, 1, "20-49"),
blackMarketItem("the_vault:chromatic_steel_ingot", 1200, 2400, 64, 6, "20-49")], []);

blackMarket.addRecipe([blackMarketUnknownItem(4500, "50-74"),
blackMarketItem("the_vault:crispy_deluxe_cheese_burger", 600, 1200, 40, 1, "50-74"),
blackMarketItem("the_vault:salty_deluxe_cheese_burger", 1000, 2000, 25, 1, "50-74"),
blackMarketOmegaItem("the_vault:blank_key", 18000, 36000, 2, 12000, 16000, 2, 1, "50-74"),
blackMarketOmegaSItem("the_vault:capstone_dungeon_hunter", 2400, 6000, 6, 1, "50-74"),
blackMarketOmegaSItem("the_vault:capstone_treasure_hunter", 4000, 8000, 4, 1, "50-74"),
blackMarketOmegaItem("the_vault:unidentified_artifact", 60000, 96000, 1, 32000, 48000, 1, 1, "50-74"),
blackMarketOmegaItem("the_vault:knowledge_star", 7200, 14400, 16, 1600, 3200, 16, 1, "50-74"),
blackMarketItem("the_vault:repair_core", 1200, 1800, 32, 1, "50-74"),
blackMarketOmegaItem("the_vault:sour_orange", 6000, 12000, 2, 3000, 6000, 2, 1, "50-74"),
blackMarketItem("the_vault:modifier_scroll", 6000, 12000, 2, 1, "50-74"),
blackMarketOmegaItem("the_vault:bitter_lemon", 2400, 4200, 8, 1200, 1800, 8, 1, "50-74"),
blackMarketItem("the_vault:vault_platinum", 1200, 2400, 16, 1, "50-74"),
blackMarketItem("the_vault:mod_box", 1200, 2400, 32, 1, "50-74"),
blackMarketOmegaItem("the_vault:opportunistic_focus", 9600, 18000, 4, 4800, 10000, 4, 1, "50-74"),
blackMarketItem("the_vault:cryonic_focus", 9600, 18000, 4, 1, "50-74"),
blackMarketItem("the_vault:pyretic_focus", 9600, 18000, 4, 1, "50-74"),
blackMarketItem("the_vault:vorpal_focus", 9600, 18000, 4, 1, "50-74"),
blackMarketItem("the_vault:empowered_chaotic_focus", 6000, 12000, 4, 1, "50-74"),
blackMarketOmegaItem("the_vault:resilient_focus", 6000, 12000, 4, 3000, 6000, 4, 1, "50-74"),
blackMarketItem("the_vault:fundamental_focus", 2700, 4200, 16, 1, "50-74"),
blackMarketOmegaSItem("the_vault:fundamental_focus", 1600, 2400, 16, 3, "50-74"),
blackMarketItem("the_vault:chaotic_focus", 1200, 1800, 32, 3, "50-74"),
blackMarketOmegaItem("the_vault:trinket", 24000, 36000, 2, 12000, 20000, 2, 1, "50-74"),
blackMarketOmegaItem("the_vault:trinket_scrap", 12000, 24000, 4, 6000, 12000, 4, 1, "50-74"),
blackMarketItem("the_vault:phoenix_feather", 3000, 4800, 8, 1, "50-74"),
blackMarketOmegaSItem("the_vault:phoenix_feather", 1600, 2400, 8, 2, "50-74"),
blackMarketOmegaItem("the_vault:eye_of_avarice", 4500, 9000, 4, 2000, 3600, 4, 1, "50-74"),
blackMarketOmegaItem("the_vault:vault_catalyst_chaos", 18000, 36000, 4, 12000, 24000, 4, 1, "50-74"),
blackMarketOmegaItem("the_vault:jewel_pouch", 1200, 3200, 48, 1600, 3200, 20, 1, "50-74"),
blackMarketOmegaNbtItem("the_vault:inscription", 3000, 5400, 32, 2000, 3200, 24, 1, "50-74"),
blackMarketOmegaEqItem("the_vault:helmet", 2100, 4200, 32, 1600, 2800, 26, 1, "50-74"),
blackMarketOmegaEqItem("the_vault:chestplate", 2100, 4200, 32, 1600, 2800, 26, 1, "50-74"),
blackMarketOmegaEqItem("the_vault:leggings", 2100, 4200, 32, 1600, 2800, 26, 1, "50-74"),
blackMarketOmegaEqItem("the_vault:boots", 2100, 4200, 32, 1600, 2800, 26, 1, "50-74"),
blackMarketOmegaEqItem("the_vault:sword", 2100, 4200, 32, 1600, 2800, 26, 1, "50-74"),
blackMarketOmegaEqItem("the_vault:axe", 2100, 4200, 32, 1600, 2800, 26, 1, "50-74"),
blackMarketOmegaEqItem("the_vault:shield", 2100, 4200, 26, 1600, 2800, 22, 1, "50-74"),
blackMarketOmegaEqItem("the_vault:wand", 2100, 4200, 26, 1600, 2800, 22, 1, "50-74"),
blackMarketOmegaEqItem("the_vault:magnet", 2100, 4200, 32, 1600, 2800, 26, 1, "50-74"),
blackMarketItem("the_vault:crystal_seal_cake", 1200, 2400, 16, 1, "50-74"),
blackMarketItem("the_vault:faceted_focus", 1200, 2400, 16, 1, "50-74"),
blackMarketOmegaSItem("the_vault:faceted_focus", 1000, 1600, 16, 2, "50-74"),
blackMarketItem("the_vault:mystery_egg", 600, 1200, 18, 1, "50-74"),
blackMarketItem("the_vault:mystery_hostile_egg", 1200, 2400, 6, 1, "50-74"),
blackMarketOmegaItem("the_vault:artifact_fragment", 6000, 12000, 2, 3000, 6000, 2, 1, "50-74"),
blackMarketItem("the_vault:wooden_chest_scroll", 1200, 2400, 4, 1, "50-74"),
blackMarketItem("the_vault:ornate_chest_scroll", 2400, 4800, 4, 1, "50-74"),
blackMarketItem("the_vault:living_chest_scroll", 2400, 4800, 4, 1, "50-74"),
blackMarketItem("the_vault:gilded_chest_scroll", 2400, 4800, 4, 1, "50-74"),
blackMarketItem("the_vault:bounty_pearl", 900, 1500, 12, 1, "50-74"),
blackMarketOmegaSItem("the_vault:bounty_pearl", 1000, 1800, 20, 5, "50-74"),
blackMarketOmegaNbtItem("the_vault:vault_catalyst_infused", 1800, 3600, 48, 1200, 2400, 48, 1, "50-74"),
blackMarketItem("the_vault:black_chromatic_steel_ingot", 1800, 3000, 40, 1, "50-74"),
blackMarketItem("the_vault:gem_pog", 2400, 3600, 8, 1, "50-74"),
blackMarketOmegaItem("sophisticatedbackpacks:iron_backpack", 4800, 7200, 6, 2000, 3600, 8, 1, "50-74"),
blackMarketItem("the_vault:chromatic_steel_ingot", 1200, 2400, 64, 7, "50-74"),
blackMarketOmegaIdItem("the_vault:card_deck", "black", 18000, 30000, 3, 7000, 14000, 3, 1, "50-74"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:stat_pack", 4500, 6000, 16, 2000, 2400, 16, 1, "50-74"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:mix_pack", 4500, 6000, 16, 2000, 2400, 16, 1, "50-74"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:resource_pack", 4500, 6000, 16, 2000, 2400, 16, 1, "50-74"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:arcane_pack", 4500, 6000, 12, 2000, 2400, 12, 1, "50-74"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:wild_pack", 4500, 6000, 12, 2000, 2400, 12, 1, "50-74"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:mega_arcane_pack", 4500, 6000, 3, 2000, 2400, 3, 1, "50-74"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:mega_stat_pack", 4500, 6000, 3, 2000, 2400, 3, 1, "50-74"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:mega_mix_pack", 4500, 6000, 3, 2000, 2400, 3, 1, "50-74")], []);

blackMarket.addRecipe([blackMarketUnknownItem(4500, "75+"),
blackMarketItem("the_vault:salty_deluxe_cheese_burger", 1000, 2000, 40, 1, "75+"),
blackMarketItem("the_vault:cheese_burger_feast", 2000, 3500, 25, 1, "75+"),
blackMarketItem("the_vault:spicy_hearty_burger", 5000, 8000, 12, 1, "75+"),
blackMarketOmegaItem("the_vault:blank_key", 18000, 36000, 2, 12000, 16000, 2, 1, "75+"),
blackMarketOmegaSItem("the_vault:capstone_dungeon_hunter", 2400, 6000, 6, 1, "75+"),
blackMarketOmegaSItem("the_vault:capstone_treasure_hunter", 4000, 8000, 4, 1, "75+"),
blackMarketOmegaItem("the_vault:unidentified_artifact", 60000, 96000, 1, 32000, 48000, 1, 1, "75+"),
blackMarketOmegaItem("the_vault:knowledge_star", 7200, 14400, 1600, 3200, 1600, 16, 1, "75+"),
blackMarketItem("the_vault:repair_core", 1800, 3000, 32, 1, "75+"),
blackMarketOmegaItem("the_vault:sour_orange", 6000, 12000, 2, 3000, 6000, 2, 1, "75+"),
blackMarketOmegaItem("the_vault:modifier_scroll", 6000, 12000, 2, 3000, 6000, 2, 1, "75+"),
blackMarketOmegaItem("the_vault:bitter_lemon", 2400, 4200, 8, 1200, 1800, 8, 1, "75+"),
blackMarketItem("the_vault:vault_platinum", 1200, 2400, 16, 1, "75+"),
blackMarketItem("the_vault:mod_box", 1200, 2400, 32, 1, "75+"),
blackMarketOmegaItem("the_vault:opportunistic_focus", 9600, 18000, 4, 4800, 10000, 4, 1, "75+"),
blackMarketItem("the_vault:cryonic_focus", 9600, 18000, 4, 1, "75+"),
blackMarketItem("the_vault:pyretic_focus", 9600, 18000, 4, 1, "75+"),
blackMarketItem("the_vault:vorpal_focus", 9600, 18000, 4, 1, "75+"),
blackMarketItem("the_vault:empowered_chaotic_focus", 6000, 12000, 4, 1, "75+"),
blackMarketOmegaItem("the_vault:resilient_focus", 6000, 12000, 4, 3000, 6000, 4, 1, "75+"),
blackMarketItem("the_vault:fundamental_focus", 2700, 4200, 16, 1, "75+"),
blackMarketOmegaSItem("the_vault:fundamental_focus", 2000, 3200, 16, 3, "75+"),
blackMarketItem("the_vault:chaotic_focus", 1200, 1800, 32, 3, "75+"),
blackMarketItem("the_vault:waxing_focus", 3900, 5700, 10, 1, "75+"),
blackMarketOmegaSItem("the_vault:waxing_focus", 2800, 3800, 10, 3, "75+"),
blackMarketItem("the_vault:waning_focus", 3900, 5700, 10, 1, "75+"),
blackMarketOmegaSItem("the_vault:waning_focus", 2800, 3800, 10, 3, "75+"),
blackMarketOmegaItem("the_vault:trinket", 24000, 36000, 2, 12000, 20000, 2, 1, "75+"),
blackMarketOmegaItem("the_vault:trinket_scrap", 12000, 24000, 4, 6000, 12000, 4, 1, "75+"),
blackMarketItem("the_vault:phoenix_feather", 3000, 4800, 8, 1, "75+"),
blackMarketOmegaSItem("the_vault:phoenix_feather", 2000, 2800, 8, 2, "75+"),
blackMarketOmegaItem("the_vault:eye_of_avarice", 4500, 9000, 4, 2000, 3600, 4, 1, "75+"),
blackMarketOmegaItem("the_vault:vault_catalyst_chaos", 18000, 36000, 4, 12000, 24000, 4, 1, "75+"),
blackMarketOmegaItem("the_vault:jewel_pouch", 1200, 3200, 40, 1600, 3200, 20, 1, "75+"),
blackMarketOmegaNbtItem("the_vault:inscription", 4200, 7800, 32, 2400, 3600, 24, 1, "75+"),
blackMarketOmegaEqItem("the_vault:helmet", 2400, 4800, 32, 1600, 2800, 24, 1, "75+"),
blackMarketOmegaEqItem("the_vault:chestplate", 2400, 4800, 32, 1600, 2800, 24, 1, "75+"),
blackMarketOmegaEqItem("the_vault:leggings", 2400, 4800, 32, 1600, 2800, 24, 1, "75+"),
blackMarketOmegaEqItem("the_vault:boots", 2400, 4800, 32, 1600, 2800, 24, 1, "75+"),
blackMarketOmegaEqItem("the_vault:sword", 2400, 4800, 32, 1600, 2800, 24, 1, "75+"),
blackMarketOmegaEqItem("the_vault:axe", 2400, 4800, 32, 1600, 2800, 24, 1, "75+"),
blackMarketOmegaEqItem("the_vault:shield", 2400, 4800, 26, 1600, 2800, 18, 1, "75+"),
blackMarketOmegaEqItem("the_vault:wand", 2400, 4800, 26, 1600, 2800, 18, 1, "75+"),
blackMarketOmegaEqItem("the_vault:magnet", 2400, 4800, 32, 1600, 2800, 24, 1, "75+"),
blackMarketItem("the_vault:crystal_seal_cake", 1200, 2400, 16, 1, "75+"),
blackMarketItem("the_vault:faceted_focus", 1200, 2400, 16, 1, "75+"),
blackMarketOmegaSItem("the_vault:faceted_focus", 1000, 1600, 16, 2, "75+"),
blackMarketItem("the_vault:mystery_egg", 600, 1200, 16, 1, "75+"),
blackMarketItem("the_vault:mystery_hostile_egg", 1200, 2400, 4, 1, "75+"),
blackMarketOmegaItem("the_vault:artifact_fragment", 6000, 12000, 2, 3000, 6000, 2, 1, "75+"),
blackMarketItem("the_vault:wooden_chest_scroll", 1200, 2400, 4, 1, "75+"),
blackMarketItem("the_vault:ornate_chest_scroll", 2400, 4800, 4, 1, "75+"),
blackMarketItem("the_vault:living_chest_scroll", 2400, 4800, 4, 1, "75+"),
blackMarketItem("the_vault:gilded_chest_scroll", 2400, 4800, 4, 1, "75+"),
blackMarketItem("the_vault:bounty_pearl", 600, 1200, 16, 1, "75+"),
blackMarketOmegaSItem("the_vault:bounty_pearl", 1000, 1800, 20, 5, "75+"),
blackMarketOmegaNbtItem("the_vault:vault_catalyst_infused", 1800, 3600, 48, 1200, 2400, 48, 1, "75+"),
blackMarketItem("the_vault:black_chromatic_steel_ingot", 1800, 3000, 40, 1, "75+"),
blackMarketOmegaIdItem("the_vault:card_deck", "black", 18000, 30000, 3, 7000, 14000, 3, 1, "75+"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:stat_pack", 4500, 6000, 16, 2000, 2400, 16, 1, "75+"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:mix_pack", 4500, 6000, 16, 2000, 2400, 16, 1, "75+"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:resource_pack", 4500, 6000, 16, 2000, 2400, 16, 1, "75+"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:arcane_pack", 4500, 6000, 12, 2000, 2400, 12, 1, "75+"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:wild_pack", 4500, 6000, 12, 2000, 2400, 12, 1, "75+"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:mega_arcane_pack", 4500, 6000, 3, 2000, 2400, 3, 1, "75+"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:mega_stat_pack", 4500, 6000, 3, 2000, 2400, 3, 1, "75+"),
blackMarketOmegaIdItem("the_vault:booster_pack", "the_vault:mega_mix_pack", 4500, 6000, 3, 2000, 2400, 3, 1, "75+")], []);

JEI.addCategory(blackMarket);




// 商店  shop_pedestal.json
var vendor = JeiCategory.create<Custom>("vendor_shop", new TextComponent("购物基座"), <item:the_vault:shop_pedestal>, [<item:the_vault:shop_pedestal>]) as Custom;
vendor.background = JeiDrawable.blank(180, 90) as JeiDrawable;

for y in 0 .. 4 {
    for x in 0 .. 9 {
        vendor.addDrawable(1 + (x * 20), 5 + (y * 20), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    }
}
for y in 0 .. 4 {
    for x in 0 .. 9 {
        vendor.addSlot(10 * y + x, 2 + (x * 20), 6 + (y * 20), false);
    }
}

function vendorItem(item as string, minPrice as int, maxPrice as int, chance as int, level as string) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"宝库等级: " + level + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + chance + "\",\"italic\":false,\"color\":\"gray\"}]"]}});
}

function vendorInscriptionItem(item as string, minPrice as int, maxPrice as int, chance as int, level as string) as IItemStack {
  return <item:${item}>.withTag({pool: "the_vault:pedestal", display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"宝库等级: " + level + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + chance + "\",\"italic\":false,\"color\":\"gray\"}]"]}});
}

function vendorPoolItem(item as string, nbtpool as string, minPrice as int, maxPrice as int, chance as int, level as string) as IItemStack {
  return <item:${item}>.withTag({pool: nbtpool, display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"宝库等级: " + level + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + chance + "\",\"italic\":false,\"color\":\"gray\"}]"]}});
}

function vendorIdItem(item as string, nbtid as string, minPrice as int, maxPrice as int, chance as int, level as string) as IItemStack {
  return <item:${item}>.withTag({id: nbtid, display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"宝库等级: " + level + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"权重: " + chance + "\",\"italic\":false,\"color\":\"gray\"}]"]}});
}

vendor.addRecipe([vendorItem("the_vault:plain_burger", 1, 1, 144, "0-29"),
vendorItem("the_vault:cheese_burger", 1, 2, 90, "0-29"),
vendorItem("sophisticatedbackpacks:iron_backpack", 8, 12, 36, "0-29"),
vendorItem("the_vault:sword", 4, 8, 72, "0-29"),
vendorItem("the_vault:axe", 4, 8, 72, "0-29"),
vendorItem("the_vault:helmet", 4, 8, 72, "0-29"),
vendorItem("the_vault:chestplate", 4, 8, 72, "0-29"),
vendorItem("the_vault:leggings", 4, 8, 72, "0-29"),
vendorItem("the_vault:boots", 4, 8, 72, "0-29"),
vendorItem("the_vault:shield", 4, 8, 58, "0-29"),
vendorItem("the_vault:wand", 4, 8, 58, "0-29"),
vendorItem("the_vault:focus", 4, 8, 58, "0-29"),
vendorItem("the_vault:magnet", 4, 8, 58, "0-29"),
vendorItem("the_vault:knowledge_star", 12, 16, 36, "0-29")], []);

vendor.addRecipe([vendorItem("the_vault:double_cheese_burger", 2, 4, 144, "30-49"),
vendorItem("the_vault:deluxe_cheese_burger", 3, 6, 90, "30-49"),
vendorItem("sophisticatedbackpacks:iron_backpack", 8, 12, 61, "30-49"),
vendorItem("sophisticatedbackpacks:gold_backpack", 16, 24, 61, "30-49"),
vendorItem("the_vault:sword", 16, 24, 124, "30-49"),
vendorItem("the_vault:axe", 16, 24, 124, "30-49"),
vendorItem("the_vault:helmet", 16, 24, 124, "30-49"),
vendorItem("the_vault:chestplate", 16, 24, 124, "30-49"),
vendorItem("the_vault:leggings", 16, 24, 124, "30-49"),
vendorItem("the_vault:boots", 16, 24, 124, "30-49"),
vendorItem("the_vault:shield", 16, 24, 100, "30-49"),
vendorItem("the_vault:wand", 16, 24, 100, "30-49"),
vendorItem("the_vault:focus", 16, 24, 100, "30-49"),
vendorItem("the_vault:magnet", 16, 24, 100, "30-49"),
vendorPoolItem("the_vault:inscription", "the_vault:pedestal", 20, 32, 56, "30-49"),
vendorItem("the_vault:jewel_pouch", 16, 32, 80, "30-49"),
vendorItem("the_vault:sour_orange", 16, 24, 61, "30-49"),
vendorItem("the_vault:trinket_scrap", 20, 32, 61, "30-49"),
vendorItem("the_vault:trinket", 28, 64, 30, "30-49"),
vendorItem("the_vault:artifact_fragment", 24, 64, 14, "30-49"),
vendorItem("the_vault:knowledge_star", 12, 16, 61, "30-49"),
vendorItem("the_vault:vault_catalyst_chaos", 32, 64, 30, "30-49"),
vendorItem("the_vault:crystal_seal_cake", 8, 16, 61, "30-49"),
vendorItem("the_vault:mystery_egg", 4, 8, 157, "30-49"),
vendorItem("the_vault:bitter_lemon", 8, 16, 124, "30-49"),
vendorItem("the_vault:hardened_chest_scroll", 16, 32, 30, "30-49"),
vendorItem("the_vault:flesh_chest_scroll", 32, 64, 14, "30-49"),
vendorItem("the_vault:enigma_chest_scroll", 64, 128, 4, "30-49"),
vendorItem("the_vault:mod_box", 6, 12, 157, "30-49"),
vendorItem("the_vault:vault_catalyst_infused", 12, 24, 320, "30-49")], []);

vendor.addRecipe([vendorItem("the_vault:crispy_deluxe_cheese_burger", 4, 8, 144, "50-64"),
vendorItem("the_vault:salty_deluxe_cheese_burger", 6, 10, 90, "50-64"),
vendorIdItem("the_vault:card_deck", "merchant", 24, 48, 16, "50-64"),
vendorItem("sophisticatedbackpacks:iron_backpack", 8, 12, 53, "50-64"),
vendorItem("sophisticatedbackpacks:gold_backpack", 16, 24, 53, "50-64"),
vendorItem("sophisticatedbackpacks:diamond_backpack", 24, 48, 26, "50-64"),
vendorItem("the_vault:sword", 24, 32, 111, "50-64"),
vendorItem("the_vault:axe", 24, 32, 111, "50-64"),
vendorItem("the_vault:helmet", 24, 32, 111, "50-64"),
vendorItem("the_vault:chestplate", 24, 32, 111, "50-64"),
vendorItem("the_vault:leggings", 24, 32, 111, "50-64"),
vendorItem("the_vault:boots", 24, 32, 111, "50-64"),
vendorItem("the_vault:shield", 24, 32, 88, "50-64"),
vendorItem("the_vault:wand", 24, 32, 88, "50-64"),
vendorItem("the_vault:focus", 24, 32, 88, "50-64"),
vendorItem("the_vault:magnet", 24, 32, 88, "50-64"),
vendorPoolItem("the_vault:inscription", "the_vault:pedestal", 24, 48, 54, "50-64"),
vendorItem("the_vault:jewel_pouch", 16, 32, 76, "50-64"),
vendorItem("the_vault:sour_orange", 20, 32, 26, "50-64"),
vendorItem("the_vault:trinket_scrap", 20, 32, 53, "50-64"),
vendorItem("the_vault:trinket", 32, 64, 26, "50-64"),
vendorItem("the_vault:artifact_fragment", 24, 64, 10, "50-64"),
vendorItem("the_vault:unidentified_treasure_key", 32, 64, 10, "50-64"),
vendorItem("the_vault:opportunistic_focus", 24, 64, 26, "50-64"),
vendorItem("the_vault:cryonic_focus", 24, 64, 26, "50-64"),
vendorItem("the_vault:pyretic_focus", 24, 64, 26, "50-64"),
vendorItem("the_vault:vorpal_focus", 24, 64, 20, "50-64"),
vendorItem("the_vault:empowered_chaotic_focus", 24, 32, 40, "50-64"),
vendorItem("the_vault:resilient_focus", 16, 32, 53, "50-64"),
vendorItem("the_vault:fundamental_focus", 4, 12, 88, "50-64"),
vendorItem("the_vault:lost_bounty", 24, 64, 26, "50-64"),
vendorItem("the_vault:capstone_dungeon_hunter", 24, 64, 26, "50-64"),
vendorItem("the_vault:capstone_treasure_hunter", 24, 64, 10, "50-64"),
vendorItem("the_vault:key_piece", 4, 8, 139, "50-64"),
vendorItem("the_vault:vault_catalyst_chaos", 32, 64, 26, "50-64"),
vendorItem("the_vault:crystal_seal_cake", 12, 24, 65, "50-64"),
vendorItem("the_vault:mystery_egg", 4, 8, 139, "50-64"),
vendorItem("the_vault:bitter_lemon", 8, 16, 111, "50-64"),
vendorItem("the_vault:hardened_chest_scroll", 16, 32, 26, "50-64"),
vendorItem("the_vault:flesh_chest_scroll", 32, 64, 10, "50-64"),
vendorItem("the_vault:enigma_chest_scroll", 64, 128, 1, "50-64"),
vendorItem("the_vault:mod_box", 6, 12, 139, "50-64"),
vendorPoolItem("the_vault:vault_catalyst_infused", "the_vault:shop_pedestal", 12, 24, 320, "50-64")], []);

vendor.addRecipe([vendorItem("the_vault:salty_deluxe_cheese_burger", 6, 10, 144, "65+"),
vendorItem("the_vault:cheese_burger_feast", 8, 12, 90, "65+"),
vendorItem("the_vault:spicy_hearty_burger", 10, 16, 40, "65+"),
vendorIdItem("the_vault:card_deck", "merchant", 24, 48, 16, "65+"),
vendorItem("sophisticatedbackpacks:iron_backpack", 12, 24, 74, "65+"),
vendorItem("sophisticatedbackpacks:gold_backpack", 18, 36, 54, "65+"),
vendorItem("sophisticatedbackpacks:diamond_backpack", 24, 48, 34, "65+"),
vendorItem("the_vault:sword", 12, 24, 110, "65+"),
vendorItem("the_vault:axe", 12, 24, 110, "65+"),
vendorItem("the_vault:helmet", 12, 24, 110, "65+"),
vendorItem("the_vault:chestplate", 12, 24, 110, "65+"),
vendorItem("the_vault:leggings", 12, 24, 110, "65+"),
vendorItem("the_vault:boots", 12, 24, 110, "65+"),
vendorItem("the_vault:shield", 12, 24, 86, "65+"),
vendorItem("the_vault:wand", 12, 24, 86, "65+"),
vendorItem("the_vault:focus", 12, 24, 86, "65+"),
vendorItem("the_vault:magnet", 12, 24, 86, "65+"),
vendorPoolItem("the_vault:inscription", "the_vault:pedestal", 12, 36, 56, "65+"),
vendorItem("the_vault:jewel_pouch", 16, 32, 80, "65+"),
vendorItem("the_vault:sour_orange", 16, 32, 27, "65+"),
vendorItem("the_vault:trinket_scrap", 16, 32, 54, "65+"),
vendorItem("the_vault:trinket", 32, 64, 27, "65+"),
vendorItem("the_vault:artifact_fragment", 32, 64, 12, "65+"),
vendorItem("the_vault:unidentified_treasure_key", 32, 64, 12, "65+"),
vendorItem("the_vault:opportunistic_focus", 32, 64, 19, "65+"),
vendorItem("the_vault:cryonic_focus", 32, 64, 19, "65+"),
vendorItem("the_vault:pyretic_focus", 32, 64, 19, "65+"),
vendorItem("the_vault:vorpal_focus", 32, 64, 19, "65+"),
vendorItem("the_vault:empowered_chaotic_focus", 24, 48, 44, "65+"),
vendorItem("the_vault:resilient_focus", 24, 48, 44, "65+"),
vendorItem("the_vault:fundamental_focus", 4, 12, 86, "65+"),
vendorItem("the_vault:lost_bounty", 16, 48, 27, "65+"),
vendorItem("the_vault:capstone_dungeon_hunter", 16, 64, 26, "65+"),
vendorItem("the_vault:capstone_treasure_hunter", 32, 64, 10, "65+"),
vendorItem("the_vault:key_piece", 2, 4, 110, "65+"),
vendorItem("the_vault:vault_catalyst_chaos", 16, 48, 27, "65+"),
vendorItem("the_vault:crystal_seal_cake", 8, 32, 65, "65+"),
vendorItem("the_vault:mystery_egg", 2, 4, 110, "65+"),
vendorItem("the_vault:bitter_lemon", 8, 12, 110, "65+"),
vendorItem("the_vault:hardened_chest_scroll", 12, 24, 27, "65+"),
vendorItem("the_vault:flesh_chest_scroll", 16, 32, 12, "65+"),
vendorItem("the_vault:enigma_chest_scroll", 24, 48, 4, "65+"),
vendorItem("the_vault:mod_box", 2, 4, 110, "65+"),
vendorPoolItem("the_vault:vault_catalyst_infused", "the_vault:shop_pedestal", 10, 20, 320, "65+"),
vendorPoolItem("the_vault:capstone_vendoor_hunter", "the_vault:shop_pedestal", 20, 40, 30, "65+"),
vendorPoolItem("the_vault:capstone_pylon_hunter", "the_vault:shop_pedestal", 20, 40, 30, "65+")], []);

JEI.addIngredient(<item:the_vault:shop_pedestal>);
JEI.addCategory(vendor);




// 宝库锻炉  recipes\gear_recipes.json
var armourCat = JeiCategory.create<Custom>("artisan_station", new TextComponent("宝库锻炉"), <item:the_vault:vault_forge>, [<item:the_vault:vault_forge>]) as Custom;
armourCat.background = JeiDrawable.blank(180, 30) as JeiDrawable;

armourCat.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(157, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

armourCat.addDrawable(130, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 62, 93, 21, 15) as JeiDrawable);

armourCat.addSlot(0, 5, 6, true);
armourCat.addSlot(1, 26, 6, true);
armourCat.addSlot(2, 47, 6, true);
armourCat.addSlot(3, 68, 6, true);
armourCat.addSlot(4, 89, 6, true);
armourCat.addSlot(5, 110, 6, true);
armourCat.addSlot(6, 158, 6, false);

// Gear
armourCat.addRecipe([<item:the_vault:helmet>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);
armourCat.addRecipe([<item:the_vault:chestplate>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);
armourCat.addRecipe([<item:the_vault:leggings>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);
armourCat.addRecipe([<item:the_vault:boots>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);
armourCat.addRecipe([<item:the_vault:axe>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);
armourCat.addRecipe([<item:the_vault:sword>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);
armourCat.addRecipe([<item:the_vault:shield>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);
armourCat.addRecipe([<item:the_vault:wand>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);
armourCat.addRecipe([<item:the_vault:focus>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);
armourCat.addRecipe([<item:the_vault:magnet>], [<item:the_vault:vault_alloy> * 3, <item:the_vault:vault_gold>]);

// Add category
JEI.addCategory(armourCat);




// 饰品锻炉  recipes\trinket_recipes.json
var trinketCat = JeiCategory.create<Custom>("trinket_forge", new TextComponent("饰品锻炉"), <item:the_vault:trinket_forge>, [<item:the_vault:trinket_forge>]) as Custom;
trinketCat.background = JeiDrawable.blank(180, 30) as JeiDrawable;

trinketCat.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
trinketCat.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
trinketCat.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
trinketCat.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
trinketCat.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
trinketCat.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
trinketCat.addDrawable(157, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

trinketCat.addDrawable(130, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 62, 93, 21, 15) as JeiDrawable);

trinketCat.addSlot(0, 5, 6, true);
trinketCat.addSlot(1, 26, 6, true);
trinketCat.addSlot(2, 47, 6, true);
trinketCat.addSlot(3, 68, 6, true);
trinketCat.addSlot(4, 89, 6, true);
trinketCat.addSlot(5, 110, 6, true);
trinketCat.addSlot(6, 158, 6, false);

// Trinkets
trinketCat.addRecipe([<item:the_vault:trinket>], [<item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 32, <item:the_vault:gem_alexandrite> * 192, <item:the_vault:trinket_scrap>]);

// Add category
JEI.addCategory(trinketCat);





// 工具装配台  recipes\tool_recipes.json
JEI.hideIngredient(<item:the_vault:tool>);
var toolCat = JeiCategory.create<Custom>("vault_tool_station", new TextComponent("工具装配台"), <item:the_vault:tool_station>, [<item:the_vault:tool_station>]) as Custom;
toolCat.background = JeiDrawable.blank(180, 30) as JeiDrawable;

toolCat.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(157, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

toolCat.addDrawable(130, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 62, 93, 21, 15) as JeiDrawable);

toolCat.addSlot(0, 5, 6, true);
toolCat.addSlot(1, 26, 6, true);
toolCat.addSlot(2, 47, 6, true);
toolCat.addSlot(3, 68, 6, true);
toolCat.addSlot(4, 89, 6, true);
toolCat.addSlot(5, 110, 6, true);
toolCat.addSlot(6, 158, 6, false);

// Recipes
toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [4088642441712019850, -2908456451661967519, 1514722424829605915, 4616400934536516931, 107798892737, 423054278656, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -8388307835, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:chromatic_iron_ingot> * 9, <item:the_vault:driftwood> * 2, <item:the_vault:vault_bronze> * 8]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [4088642441712019850, -2908456451661967519, 1514722424829605915, 4616400934536516931, 107798892737, 423054278656, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -8388307835, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-7920290657449244086, 5809905508407278008, 1514722424829605914, 4616400934536516931, 161485983937, 697932185605, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -7314566011, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:chromatic_steel_ingot> * 9, <item:the_vault:driftwood> * 36, <item:the_vault:vault_bronze> * 81]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-7920290657449244086, 5809905508407278008, 1514722424829605914, 4616400934536516931, 161485983937, 697932185605, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -7314566011, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [9059907081151508074, 2335859790917641485, 1514722424829605915, 4616400934536516931, -9223371767994609471, 1247687999500, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -5167082363, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:vaulterite_ingot> * 12, <item:the_vault:driftwood> * 48, <item:the_vault:vault_bronze> * 81]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [9059907081151508074, 2335859790917641485, 1514722424829605915, 4616400934536516931, -9223371767994609471, 1247687999500, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -5167082363, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [3224901621940241082, 1974285087738049155, 1514722424829605912, 4616400934536516931, 4611686340974645441, 1522565906448, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -4093340539, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:black_chromatic_steel_ingot> * 12, <item:the_vault:driftwood> * 64,  <item:the_vault:vault_bronze> * 162]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [3224901621940241082, 1974285087738049155, 1514722424829605912, 4616400934536516931, 4611686340974645441, 1522565906448, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -4093340539, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-6744258008942599590, 7490724894486887956, 1514722424829605912, 4616400934536516931, 376234348737, 1797443813396, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -3019598715, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:echoing_ingot> * 9, <item:the_vault:driftwood> * 64,  <item:the_vault:vault_bronze> * 256]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-6744258008942599590, 7490724894486887956, 1514722424829605912, 4616400934536516931, 376234348737, 1797443813396, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -3019598715, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-1334006908380202214, -8838291958584646397, 1514722424829605915, 4616400934536516931, -9223371606933335871, 2072321720342, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -1945856891, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:omega_pog> * 9, <item:the_vault:echoing_ingot> * 9, <item:the_vault:driftwood> * 64,  <item:the_vault:vault_bronze> * 1024]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-1334006908380202214, -8838291958584646397, 1514722424829605915, 4616400934536516931, -9223371606933335871, 2072321720342, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -1945856891, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

// Add category
JEI.addCategory(toolCat);



// 珠宝  recipes\jewel_crafting_recipes.json
// <recipetype:the_vault:jewel_crafting_table>.remove(<item:the_vault:jewel>);
var jewelc = JeiCategory.create<Custom>("jewel_crafting_table", new TextComponent("珠宝制作台"), <item:the_vault:jewel_crafting_table>, [<item:the_vault:jewel_crafting_table>]) as Custom;
jewelc.background = JeiDrawable.blank(175, 45) as JeiDrawable;

jewelc.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(4, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(25, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(46, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(67, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(88, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(109, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(130, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
jewelc.addDrawable(151, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

jewelc.addDrawable(88, 7, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 21, 18, 14) as JeiDrawable);

jewelc.addSlot(0, 5, 6, true);
jewelc.addSlot(1, 26, 6, true);
jewelc.addSlot(2, 47, 6, true);

jewelc.addSlot(3, 5, 26, false);
jewelc.addSlot(4, 26, 26, false);
jewelc.addSlot(5, 47, 26, false);
jewelc.addSlot(6, 68, 26, false);
jewelc.addSlot(7, 89, 26, false);
jewelc.addSlot(8, 110, 26, false);
jewelc.addSlot(9, 131, 26, false);
jewelc.addSlot(10, 152, 26, false);

function jewelItem(size as int, attr as string) as IItemStack {
  return <item:the_vault:jewel>.withTag({size: size, jewelAttribute: attr});
}

// recipe
jewelc.addRecipe([<item:the_vault:jewel>.withTag({vaultGearData: [9102954068834547710, 6532783614268835263, 2398483460923590696, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511626475, 140737488355583, 216454257090494464, 46207190905651203, -6764834407638196052, -5575131904627146640, 4294967295, 128, 256]}),
<item:the_vault:jewel>.withTag({vaultGearData: [8825495650069423566, 4216641359236630331, 2398483460923590696, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511626475, 140737488355583, 216454257090494464, 46207190905651203, -9179301469094764372, -5575131904627146710, 4294967295, 128, 256]}),
<item:the_vault:jewel>.withTag({vaultGearData: [-3052785702126954450, -5366752167634382132, 2398483460923590698, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511626475, 140737488355583, 216454257090494464, 46207190905651203, -6766578233079848788, -5575131904627146720, 4294967295, 128, 256]}),
<item:the_vault:jewel>.withTag({vaultGearData: [-8070502701154904882, -4403879838577836553, 2398483460923590697, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511626475, 140737488355583, 216454257090494464, 46207190905651203, -4274961052042354516, -5575131904627146695, 4294967295, 128, 256]}),
<item:the_vault:jewel>.withTag({vaultGearData: [-8893279176141568050, 3087837229164464653, 2398483460923590696, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511626475, 140737488355583, 216454257090494464, 46207173725782019, 509602141692928172, -1361116187653112, 576460752304472063, 1152921504606846976]})],
[<item:the_vault:gemstone> * 1, <item:the_vault:silver_scrap> * 64, <item:the_vault:vault_gold> * 1]);

jewelc.addRecipe([<item:the_vault:jewel>.withTag({vaultGearData: [-621097725750612546, -3686966432455235094, 2398483460923590697, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511626475, 140737488355583, 216454257090494464, 46207122186174467, 2703930070277464236, 281474976681585, 8388608, 16777216]}),
<item:the_vault:jewel>.withTag({vaultGearData: [-8473742563306369586, 6359787398904331890, 2398483460923590698, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511626475, 140737488355583, 216454257090494464, 46207105006305283, -1796161977561472852, 68719476728, 2048, 4096]}),
<item:the_vault:jewel>.withTag({vaultGearData: [629389184469306990, -3265467394046784944, 2398483460923590696, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511626475, 140737488355583, 216454257090494464, 46207147955978243, -6116378183703813972, -7620749216, 2199023255555, 4398046511104]})],
[<item:the_vault:gemstone> * 1, <item:the_vault:silver_scrap> * 32, <item:the_vault:vault_gold> * 1]);

jewelc.addRecipe([<item:the_vault:jewel>.withTag({vaultGearData: [1503123565903661118, -3621554938749270571, 2398483460923590699, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511623915, 140737488355583, 216454257090494464, 46207130776109059, -8788094682176249684, 18014398507621450, 536870912, 1073741824]})],
[<item:the_vault:gemstone> * 8, <item:the_vault:silver_scrap> * 128, <item:the_vault:vault_gold> * 8]);

jewelc.addRecipe([<item:the_vault:jewel>.withTag({vaultGearData: [8520766305883925614, -6156266026222443535, 2398483460923590698, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511625195, 140737488355583, 216454257090494464, 46207156545912835, -6117953096671649620, -487727492464, 140737488355583, 281474976710656]})],
[<item:the_vault:gemstone> * 8, <item:the_vault:silver_scrap> * 256, <item:the_vault:vault_gold> * 8]);

jewelc.addRecipe([<item:the_vault:jewel>.withTag({vaultGearData: [4692801751300223390, 1527548136219924255, 2398483460923590699, 7301343536245727237, 5575674136, 23103591157858304, 324563159483502678, -8713050946218553528, 12246927038259431, 2583691264, 1653562408960, 3553434665372390400, -6750050586108581548, -1099511622635, 140737488355583, 216454257090494464, 46207139366043651, -1654851781087027028, 1152921504481320625, 34359738368, 68719476736]})],
[<item:the_vault:gemstone> * 32, <item:the_vault:silver_scrap> * 256, <item:the_vault:vault_gold> * 32]);

JEI.addCategory(jewelc);




// 虚空石  recipes\void_stone_recipes.json
var voidStoneCat = JeiCategory.create<Custom>("vault_charm_controller", new TextComponent("虚空坩埚"), <item:the_vault:vault_charm_controller>, [<item:the_vault:vault_charm_controller>]) as Custom;
voidStoneCat.background = JeiDrawable.blank(180, 30) as JeiDrawable;

voidStoneCat.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
voidStoneCat.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
voidStoneCat.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
voidStoneCat.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
voidStoneCat.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
voidStoneCat.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
voidStoneCat.addDrawable(157, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

voidStoneCat.addDrawable(130, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 62, 93, 21, 15) as JeiDrawable);

voidStoneCat.addSlot(0, 5, 6, true);
voidStoneCat.addSlot(1, 26, 6, true);
voidStoneCat.addSlot(2, 47, 6, true);
voidStoneCat.addSlot(3, 68, 6, true);
voidStoneCat.addSlot(4, 89, 6, true);
voidStoneCat.addSlot(5, 110, 6, true);
voidStoneCat.addSlot(6, 158, 6, false);

// recipe
voidStoneCat.addRecipe([<item:the_vault:void_stone>], [<item:the_vault:vault_gold> * 4, <item:the_vault:vault_alloy> * 2]);

JEI.addCategory(voidStoneCat);
