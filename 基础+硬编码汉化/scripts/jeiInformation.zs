/* scripts made by Douwsky
for Iskall85's Vaulthunters */

// adding recipes

import mods.jei.JEI;

mods.jei.JEI.addDescription(<item:the_vault:vault_catalyst_fragment>,("从24级开始，催化剂碎片可以在未修饰的宝库中在木制宝箱中发现。"));
mods.jei.JEI.addDescription(<item:the_vault:augment>,("将宝库水晶与主题组件组合，可以将水晶的主题锁定为主题组件上指定的主题。主题组件有20%的概率从完成板条箱中作为奖励获得，其主题即为所完成的宝库的主题。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_charm>,("如果此物品在你的物品栏中，在宝库中拾取物品时，所有废品控制器内的白名单物品将自动销毁。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_charm_controller>,("废品控制器允许你在其GUI中配置白名单，该白名单将使玩家自动销毁在宝库中拾取的白名单物品。废品处理控制器可以使用宝库废品升级进行升级，但必须先安装低阶的升级再安装更高阶的升级。它能为你提供更好的物品栏管理，并且拾取白名单物品时不会损失磁铁的耐久度。"));
mods.jei.JEI.addDescription(<item:the_vault:cryo_chamber>,("用于创造永生者！使用永恒之魂右击低温箱以将其插入。当插入足够多的永恒之魂时，它将产生并保存一个永生者。右击以拾起永生者，并将其运送到永生者基座。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_altar>,("宝库祭坛可以让你把普通的宝库之石变成神秘的宝库水晶！在宝库祭坛上使用宝库之石可以确定完成水晶配方所需的物品，每次配方都不同，并且随着你制作水晶的次数增加，所需材料的数量会慢慢增加。通过在祭坛附近将物品丢出物品栏来向祭坛提交物品。祭坛配方完成后，提供一个红石信号完成制作过程，就能完成你的宝库水晶了。"));
mods.jei.JEI.addDescription(<item:the_vault:soul_flame>,("在铁砧中与65级以上的宝库水晶组合，为水晶添加“升华”。每次完成“升华”宝库会叠加“火焰”层数，增加宝库战利品数量和稀有度，也增加宝库经验，但增加宝库目标的难度。如果没有完成“升华”宝库，会丢失所有“火焰”层数。"));
mods.jei.JEI.addDescription(<item:the_vault:wardens_pearl>,("在铁砧中与水晶组合以添加“来生”宝库词缀，玩家死亡后不会丢失物品和装备，但获得的宝库经验减少50%。"));
mods.jei.JEI.addDescription(<item:the_vault:phoenix_feather>,("在铁砧中与水晶组合以添加“凤凰”宝库词缀。每个羽毛都可以使玩家免死一次，并且同一个水晶可以添加多次。"));
mods.jei.JEI.addDescription(<item:the_vault:eye_of_avarice>,("在铁砧中与水晶组合以添加“猎手之梦”。“猎手之梦”能完全阻止陷阱宝箱生成，即使是在有“进退为难”宝库词缀的水晶上也是如此。"));