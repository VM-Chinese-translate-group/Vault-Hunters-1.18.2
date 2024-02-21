import mods.jei.category.Custom;
import mods.jei.JEI;
import mods.jei.category.SimpleJeiCategory;
import mods.jei.category.JeiCategory;
import crafttweaker.api.text.TextComponent;
import mods.jei.component.JeiDrawable;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.item.IItemStack;

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
armourCat.addRecipe([<item:the_vault:leggings>], [<item:minecraft:netherite_ingot>, <item:the_vault:vault_gold>, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:chestplate>], [<item:minecraft:netherite_ingot>, <item:the_vault:vault_gold>, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:helmet>], [<item:minecraft:netherite_ingot>, <item:the_vault:vault_gold>, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:boots>], [<item:minecraft:netherite_ingot>, <item:the_vault:vault_gold>, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:sword>], [<item:minecraft:netherite_ingot>, <item:the_vault:vault_gold>, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:axe>], [<item:minecraft:netherite_ingot>, <item:the_vault:vault_gold>, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:shield>], [<item:minecraft:netherite_ingot>, <item:the_vault:vault_gold>, <item:the_vault:vault_alloy> * 9]);

// Magnet
armourCat.addRecipe([<item:the_vault:magnet>], [<item:the_vault:magnetite_ingot> * 9, <item:the_vault:vault_gold>]);

// Wand
armourCat.addRecipe([<item:the_vault:wand>], [<item:minecraft:netherite_ingot>, <item:the_vault:vault_gold>, <item:the_vault:vault_alloy> * 9]);

// Focus
armourCat.addRecipe([<item:the_vault:focus>], [<item:minecraft:netherite_ingot>, <item:the_vault:vault_gold>, <item:the_vault:vault_alloy> * 9]);

// Trinkets
armourCat.addRecipe([<item:the_vault:trinket>.anyDamage()], [<item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 32, <item:the_vault:gem_alexandrite> * 192, <item:the_vault:trinket_scrap>]);

// Add category
JEI.addCategory(armourCat);

// Tools
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

// Jewels
toolCat.addRecipe([<item:the_vault:jewel>], [<item:the_vault:gemstone>, <item:the_vault:vault_bronze> * 9, <item:the_vault:silver_scrap> * 8, <item:the_vault:gem_wutodie> * 5]);

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [4088642441712019850, -2908456451661967519, 1514722424829605915, 4616400934536516931, 107798892737, 423054278656, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -8388307835, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:chromatic_iron_ingot> * 9, <item:the_vault:driftwood> * 2, <item:the_vault:vault_bronze> * 8]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [4088642441712019850, -2908456451661967519, 1514722424829605915, 4616400934536516931, 107798892737, 423054278656, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -8388307835, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-7920290657449244086, 5809905508407278008, 1514722424829605914, 4616400934536516931, 161485983937, 697932185605, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -7314566011, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:chromatic_steel_ingot> * 9, <item:the_vault:driftwood> * 36, <item:the_vault:vault_bronze> * 81, <item:the_vault:wutodic_mass> * 2]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-7920290657449244086, 5809905508407278008, 1514722424829605914, 4616400934536516931, 161485983937, 697932185605, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -7314566011, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [2579985637425059258, -5991822941717261485, 1514722424829605915, 4616400934536516931, -4611685803254312767, 972810092552, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -6240824187, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:vaulterite_ingot> * 12, <item:the_vault:driftwood> * 48, <item:the_vault:vault_bronze> * 81, <item:the_vault:wutodic_mass> * 3]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [2579985637425059258, -5991822941717261485, 1514722424829605915, 4616400934536516931, -4611685803254312767, 972810092552, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -6240824187, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [9059907081151508074, 2335859790917641485, 1514722424829605915, 4616400934536516931, -9223371767994609471, 1247687999500, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -5167082363, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:vault_alloy> * 24, <item:the_vault:wutodic_silver_ingot> * 8, <item:the_vault:driftwood> * 48,  <item:the_vault:vault_bronze> * 81, <item:the_vault:wutodic_mass> * 4]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [9059907081151508074, 2335859790917641485, 1514722424829605915, 4616400934536516931, -9223371767994609471, 1247687999500, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -5167082363, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [3224901621940241082, 1974285087738049155, 1514722424829605912, 4616400934536516931, 4611686340974645441, 1522565906448, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -4093340539, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:black_chromatic_steel_ingot> * 12, <item:the_vault:driftwood> * 64,  <item:the_vault:vault_bronze> * 162, <item:the_vault:wutodic_mass> * 8]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [3224901621940241082, 1974285087738049155, 1514722424829605912, 4616400934536516931, 4611686340974645441, 1522565906448, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -4093340539, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-6744258008942599590, 7490724894486887956, 1514722424829605912, 4616400934536516931, 376234348737, 1797443813396, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -3019598715, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:echoing_ingot> * 9, <item:the_vault:driftwood> * 64,  <item:the_vault:vault_bronze> * 256, <item:the_vault:wutodic_mass> * 16]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-6744258008942599590, 7490724894486887956, 1514722424829605912, 4616400934536516931, 376234348737, 1797443813396, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -3019598715, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-1334006908380202214, -8838291958584646397, 1514722424829605915, 4616400934536516931, -9223371606933335871, 2072321720342, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -1945856891, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:omega_pog> * 9, <item:the_vault:echoing_ingot> * 9, <item:the_vault:driftwood> * 64,  <item:the_vault:vault_bronze> * 1024, <item:the_vault:wutodic_mass> * 24]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-1334006908380202214, -8838291958584646397, 1514722424829605915, 4616400934536516931, -9223371606933335871, 2072321720342, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -1945856891, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

// Add category
JEI.addCategory(toolCat);

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

function runeItem(pool as string, color as int, model as int) as IItemStack {
  return <item:the_vault:inscription>.withTag({data: {completion: 0.0 as float, entries: [{pool: pool, count: 1 as int, color: color}], model: model, time: 0 as int, instability: 0.0 as float}});
}

inscription.addRecipe([<item:the_vault:inscription>.withTag({data: {completion: 0.05 as float, entries: [{count: 1 as int, color: 16777215 as int, type: 0 as int}], model: 0 as int, time: 400 as int, instability: 0.01 as float}})], [<item:the_vault:inscription_piece> * 16]);

// Mushroom
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/mush_room", 7012096, 2)], [<item:the_vault:living_chest_scroll> * 5, <item:the_vault:vault_gold> * 16, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/mush_room", 7012096, 2));

// Blacksmith
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/blacksmith", 7012096, 1)], [<item:the_vault:ornate_chest_scroll> * 5, <item:the_vault:vault_gold> * 16, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/blacksmith", 7012096, 1));

// Library
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/library", 7012096, 3)], [<item:the_vault:gilded_chest_scroll> * 5, <item:the_vault:vault_gold> * 16, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/library", 7012096, 3));

// Cove
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/cove", 7012096, 4)], [<item:the_vault:bounty_pearl> * 32, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 8]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/cove", 7012096, 4));

// Mine
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/mine", 7012096, 9)], [<item:the_vault:gem_larimar> * 256, <item:the_vault:vault_gold> * 16, <item:the_vault:inscription_piece> * 64, <item:the_vault:gem_echo> * 8]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/mine", 7012096, 9));

// Vendor
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/vendor", 7012096, 12)], [<item:the_vault:gem_echo> * 16, <item:the_vault:inscription_piece> * 64]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/vendor", 7012096, 12));

// Painting
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/painting", 7012096, 10)], [<item:the_vault:wooden_chest_scroll> * 2, <item:the_vault:living_chest_scroll> * 2, <item:the_vault:ornate_chest_scroll> * 2, <item:the_vault:gilded_chest_scroll> * 2, <item:the_vault:vault_gold> * 8, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4, <item:the_vault:bounty_pearl> * 8]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/painting", 7012096, 10));

// Dragon
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/dragon", 15769088, 7)], [<item:the_vault:bounty_pearl> * 32, <item:the_vault:inscription_piece> * 16, <item:the_vault:gem_echo> * 2]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/dragon", 15769088, 7));

// Village
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/village", 15769088, 13)], [<item:the_vault:living_chest_scroll> * 1, <item:the_vault:gilded_chest_scroll> * 1, <item:the_vault:ornate_chest_scroll> * 1, <item:the_vault:vault_gold> * 12, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/village", 15769088, 13));

// Factory
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/factory", 15769088, 8)], [<item:minecraft:netherite_block>, <item:the_vault:vault_gold> * 8, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/factory", 15769088, 8));

// Wild West
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/wildwest", 15769088, 14)], [<item:the_vault:gilded_chest_scroll> * 2, <item:the_vault:vault_gold> * 8, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/wildwest", 15769088, 14));

// X-Mark
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/x-mark", 15769088, 15)], [<item:the_vault:ornate_chest_scroll> * 2, <item:the_vault:vault_gold> * 8, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/x-mark", 15769088, 15));

// Crystal Caves
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/crystal_caves", 15769088, 5)], [<item:the_vault:gem_larimar> * 128, <item:the_vault:vault_gold> * 8, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/crystal_caves", 15769088, 5));

// Add category
JEI.addCategory(inscription);


// Black Market

var blackMarket = JeiCategory.create<Custom>("black_market", new TextComponent("黑市"), <item:the_vault:black_market>, [<item:the_vault:black_market>]) as Custom;
blackMarket.background = JeiDrawable.blank(175, 180) as JeiDrawable;

for i in 0 .. 8 {
    blackMarket.addDrawable(4, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(26, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(47, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(68, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(89, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(110, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(131, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(152, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 8 {
    for column in 0 .. 8 {
        blackMarket.addSlot(8 * i + column, 6 + (column * 21), 6 + (i * 21), false);
    }
}

function blackMarketItem(item as string, minPrice as int, maxPrice as int, chance as float, quantity as int, minLevel as int) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最小等级: " + minLevel + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"概率: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}

function blackMarketOmegaItem(item as string, minPrice as int, maxPrice as int, chance as float, quantity as int, minLevel as int) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]","[{\"text\":\"终焉级\",\"bold\":true,\"color\":\"purple\"}]","[{\"text\":\"最低价格: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最高价格: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"最小等级: " + minLevel + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"概率: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}

blackMarket.addRecipe([blackMarketItem("the_vault:knowledge_star", 2400, 4800, 1.52, 1, 0),
blackMarketItem("the_vault:bitter_lemon", 800, 1400, 1.22, 1, 0),
blackMarketItem("the_vault:vault_platinum", 400, 800, 2.43, 1, 0),
blackMarketItem("the_vault:regret_orb", 100, 200, 4.86, 1, 0),
blackMarketItem("the_vault:jewel", 300, 500, 6.08, 1, 0),
blackMarketItem("the_vault:helmet", 250, 500, 3.65, 1, 0),
blackMarketItem("the_vault:chestplate", 250, 500, 3.65, 1, 0),
blackMarketItem("the_vault:leggings", 250, 500, 3.65, 1, 0),
blackMarketItem("the_vault:boots", 250, 500, 3.65, 1, 0),
blackMarketItem("the_vault:sword", 250, 500, 3.65, 1, 0),
blackMarketItem("the_vault:axe", 250, 500, 3.65, 1, 0),
blackMarketItem("the_vault:shield", 250, 500, 2.74, 1, 0),
blackMarketItem("the_vault:wand", 250, 500, 2.74, 1, 0),
blackMarketItem("the_vault:magnet", 250, 500, 3.65, 1, 0),
blackMarketItem("the_vault:unidentified_relic_fragment", 400, 800, 1.22, 1, 0),
blackMarketItem("the_vault:bounty_pearl", 200, 400, 2.43, 1, 0),
blackMarketItem("minecraft:emerald", 40, 100, 9.73, 32, 0),
blackMarketItem("minecraft:elytra", 200, 600, 3.65, 1, 0),
blackMarketItem("the_vault:black_chromatic_steel_nugget", 400, 800, 6.08, 4, 0),
blackMarketItem("minecraft:wither_skeleton_skull", 100, 200, 3.65, 1, 0),
blackMarketItem("the_vault:vault_diamond", 600, 1000, 4.86, 4, 0),
blackMarketItem("the_vault:gem_pog", 1000, 1400, 1.22, 1, 0),
blackMarketItem("sophisticatedbackpacks:backpack", 1600, 2400, 1.22, 1, 0),
blackMarketItem("the_vault:chromatic_steel_ingot", 400, 800, 9.73, 6, 0),
blackMarketItem("the_vault:repair_core", 300, 500, 4.86, 1, 0),
blackMarketItem("the_vault:blank_key", 6000, 12000, 0.21, 1, 20),
blackMarketItem("the_vault:unidentified_artifact", 20000, 32000, 0.11, 1, 20),
blackMarketItem("the_vault:sour_orange", 2000, 4000, 0.21, 1, 20),
blackMarketItem("the_vault:mod_box", 400, 800, 3.42, 1, 20),
blackMarketItem("the_vault:opportunistic_focus", 3200, 6000, 0.43, 1, 20),
blackMarketItem("the_vault:resilient_focus", 2000, 4000, 0.43, 1, 20),
blackMarketItem("the_vault:fundamental_focus", 900, 1400, 1.71, 1, 20),
blackMarketItem("the_vault:trinket", 8000, 12000, 0.21, 1, 20),
blackMarketItem("the_vault:trinket_scrap", 4000, 8000, 0.43, 1, 20),
blackMarketItem("the_vault:phoenix_feather", 800, 1200, 0.86, 1, 20),
blackMarketItem("the_vault:eye_of_avarice", 1500, 3000, 0.43, 1, 20),
blackMarketItem("the_vault:vault_catalyst_chaos", 6000, 12000, 0.43, 1, 20),
blackMarketItem("the_vault:soul_flame", 400, 800, 3.42, 1, 20),
blackMarketItem("the_vault:crystal_seal_empty", 200, 600, 3.42, 1, 20),
blackMarketItem("the_vault:crystal_seal_cake", 400, 800, 1.71, 1, 20),
blackMarketItem("the_vault:mote_purity", 800, 1200, 0.86, 1, 20),
blackMarketItem("the_vault:mote_sanctity", 3200, 6000, 0.21, 1, 20),
blackMarketItem("the_vault:mystery_egg", 200, 400, 2.14, 1, 20),
blackMarketItem("the_vault:mystery_hostile_egg", 400, 800, 0.86, 1, 20),
blackMarketItem("the_vault:artifact_fragment", 2000, 4000, 0.21, 1, 20),
blackMarketItem("the_vault:wooden_chest_scroll", 400, 800, 0.43, 1, 20),
blackMarketItem("the_vault:ornate_chest_scroll", 800, 1600, 0.43, 1, 20),
blackMarketItem("the_vault:living_chest_scroll", 800, 1600, 0.43, 1, 20),
blackMarketItem("the_vault:gilded_chest_scroll", 800, 1600, 0.43, 1, 20),
blackMarketItem("the_vault:vault_catalyst_infused", 600, 1200, 0.64, 1, 20),
blackMarketItem("the_vault:black_chromatic_steel_ingot", 600, 1000, 4.28, 1, 20),
blackMarketItem("the_vault:spicy_hearty_burger", 3000, 3600, 1.28, 1, 20),
blackMarketItem("the_vault:chaotic_focus", 400, 600, 3.22, 3, 50),
blackMarketItem("the_vault:inscription", 1000, 1800, 3.22, 1, 50),
blackMarketItem("the_vault:faceted_focus", 400, 800, 1.61, 1, 50),
blackMarketItem("sophisticatedbackpacks:iron_backpack", 1600, 2400, 0.60, 1, 50),
blackMarketItem("the_vault:waxing_focus", 1300, 1900, 1.08, 1, 75),
blackMarketItem("the_vault:waning_focus", 1300, 1900, 1.08, 1, 75)], []);

blackMarket.addRecipe([blackMarketOmegaItem("the_vault:knowledge_star", 800, 1600, 4.51, 1, 0),
blackMarketOmegaItem("the_vault:helmet", 350, 600, 6.02, 1, 0),
blackMarketOmegaItem("the_vault:chestplate", 350, 600, 6.02, 1, 0),
blackMarketOmegaItem("the_vault:leggings", 350, 600, 6.02, 1, 0),
blackMarketOmegaItem("the_vault:boots", 350, 600, 6.02, 1, 0),
blackMarketOmegaItem("the_vault:sword", 350, 600, 6.02, 1, 0),
blackMarketOmegaItem("the_vault:axe", 250, 500, 6.02, 1, 0),
blackMarketOmegaItem("the_vault:shield", 350, 600, 4.89, 1, 0),
blackMarketOmegaItem("the_vault:wand", 350, 600, 4.89, 1, 0),
blackMarketOmegaItem("the_vault:magnet", 350, 600, 6.02, 1, 0),
blackMarketOmegaItem("the_vault:jewel", 300, 600, 12.03, 1, 0),
blackMarketOmegaItem("the_vault:vault_diamond", 400, 800, 12.03, 5, 0),
blackMarketOmegaItem("the_vault:gem_pog", 800, 1000, 6.02, 1, 0),
blackMarketOmegaItem("sophisticatedbackpacks:backpack", 1000, 1800, 3.01, 1, 0),
blackMarketOmegaItem("the_vault:bounty_pearl", 500, 900, 3.01, 5, 0),
blackMarketOmegaItem("the_vault:bitter_lemon", 600, 800, 1.50, 1, 0),
blackMarketOmegaItem("the_vault:blank_key", 6000, 8000, 0.37, 1, 20),
blackMarketOmegaItem("the_vault:unidentified_artifact", 16000, 24000, 0.18, 1, 20),
blackMarketOmegaItem("the_vault:sour_orange", 1500, 3000, 0.37, 1, 20),
blackMarketOmegaItem("the_vault:opportunistic_focus", 2400, 5000, 0.74, 1, 20),
blackMarketOmegaItem("the_vault:resilient_focus", 1500, 3000, 0.74, 1, 20),
blackMarketOmegaItem("the_vault:fundamental_focus", 800, 1200, 2.95, 3, 20),
blackMarketOmegaItem("the_vault:trinket", 6000, 10000, 0.37, 1, 20),
blackMarketOmegaItem("the_vault:trinket_scrap", 3000, 6000, 0.74, 1, 20),
blackMarketOmegaItem("the_vault:phoenix_feather", 800, 1200, 1.47, 2, 20),
blackMarketOmegaItem("the_vault:eye_of_avarice", 1000, 1800, 0.74, 1, 20),
blackMarketOmegaItem("the_vault:vault_catalyst_chaos", 6000, 12000, 0.74, 1, 20),
blackMarketOmegaItem("the_vault:mote_purity", 500, 900, 1.47, 1, 20),
blackMarketOmegaItem("the_vault:mote_sanctity", 2400, 4800, 0.37, 1, 20),
blackMarketOmegaItem("the_vault:artifact_fragment", 1500, 3000, 0.37, 1, 20),
blackMarketOmegaItem("the_vault:vault_catalyst_infused", 500, 900, 1.10, 1, 20),
blackMarketOmegaItem("sophisticatedbackpacks:iron_backpack", 1000, 1800, 1.57, 1, 50),
blackMarketOmegaItem("the_vault:faceted_focus", 500, 800, 3.13, 2, 50),
blackMarketOmegaItem("the_vault:inscription", 1000, 1600, 4.70, 1, 50),
blackMarketOmegaItem("the_vault:waxing_focus", 1400, 1900, 1.92, 3, 75),
blackMarketOmegaItem("the_vault:waning_focus", 1400, 1900, 1.92, 3, 75)], []);

JEI.addCategory(blackMarket);

// Relics
JEI.hideIngredient(<item:the_vault:vault_relic>);
JEI.hideIngredient(<item:the_vault:vault_relic_fragment>);

var relic_pedestal = JeiCategory.create<Custom>("relic_pedestal", new TextComponent("遗物基座"), <item:the_vault:relic_pedestal>, [<item:the_vault:relic_pedestal>]) as Custom;
relic_pedestal.background = JeiDrawable.blank(159, 28) as JeiDrawable;

relic_pedestal.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(136, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

relic_pedestal.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 62, 93, 21, 15) as JeiDrawable);

relic_pedestal.addSlot(0, 5, 6, true);
relic_pedestal.addSlot(1, 26, 6, true);
relic_pedestal.addSlot(2, 47, 6, true);
relic_pedestal.addSlot(3, 68, 6, true);
relic_pedestal.addSlot(4, 89, 6, true);
relic_pedestal.addSlot(5, 137, 6, false);


function addRelic(category as JeiCategory, relicID as string) as void {
    for i in 1 .. 5 {
        JEI.addIngredient(<item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag" + i}));
    }

    category.addRecipe([<item:the_vault:vault_relic>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/statue"})], 
    [<item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag1"}),
    <item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag2"}),
    <item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag3"}),
    <item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag4"}),
    <item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag5"})]);

    JEI.addIngredient(<item:the_vault:vault_relic>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/statue"}));
}

addRelic(relic_pedestal, 'cupcake');
addRelic(relic_pedestal, 'dragon');
addRelic(relic_pedestal, 'elemental');
addRelic(relic_pedestal, 'miner');
addRelic(relic_pedestal, 'nazar');
addRelic(relic_pedestal, 'richity');
addRelic(relic_pedestal, 'twitch');
addRelic(relic_pedestal, 'warrior');

// Add category
JEI.addCategory(relic_pedestal);

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