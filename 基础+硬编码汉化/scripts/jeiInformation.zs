/* scripts made by Douwsky
for Iskall85's Vaulthunters */

import mods.jei.JEI;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.text.TextComponent;

// adding recipes

mods.jei.JEI.addDescription(<item:the_vault:vault_catalyst_fragment>,("从24级开始，催化剂碎片可以在未修饰的宝库中在木制宝箱中发现。"));
mods.jei.JEI.addDescription(<item:the_vault:augment>,("将主题组件在水晶工作台中添加到宝库水晶上，可以将水晶的主题设定为主题组件上指定的主题。主题组件有20%的概率从完成板条箱中作为奖励获得，其主题即为所完成的宝库的主题。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_charm>,("如果此物品在你的物品栏中，在宝库中拾取物品时，所有废品控制器内的白名单物品将自动销毁。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_charm_controller>,("虚空坩埚拥有几个在宝库中十分关键的功能。首先，你可以为它配置一个黑名单——一个在宝库探索期间不会在拾取时被销毁的方块列表。这样你就可以更好地掌控保留哪些方块。此外，坩埚还拥有一个制作界面，可以使用宝库金币和宝库合金制作虚空石。水晶选项卡可以预览在特定房间主题中可能生成的方块种类，能帮助你规划和准备。与之前的废品鉴定系统不同，其容器尺寸无法升级，因此物品栏管理比以前更加需要策略。"));
mods.jei.JEI.addDescription(<item:the_vault:cryo_chamber>,("用于创造永生者！使用永恒之魂右击低温箱以将其插入。当插入足够多的永恒之魂时，它将产生并保存一个永生者。右击以拾起永生者，并将其运送到永生者基座。"));
mods.jei.JEI.addDescription(<item:the_vault:vault_altar>,("宝库祭坛可以让你把宝库之石变成神秘的宝库水晶！在宝库祭坛上使用宝库之石可以确定完成水晶配方所需的物品，每次配方都不同，并且随着你制作水晶的次数增加，所需材料的数量会慢慢增加。通过在祭坛附近将物品丢出物品栏来向祭坛提交物品。祭坛配方完成后，提供一个红石信号完成制作过程，就能完成你的宝库水晶了。"));
mods.jei.JEI.addDescription(<item:the_vault:soul_flame>,("将这个宝库之石放置在宝库祭坛上，可以制作挑战者宝库水晶，为水晶添加“升华”。“升华”进度清空时，会获得余烬，可以在升华锻炉中购买物品和幻形。"));
mods.jei.JEI.addDescription(<item:the_vault:wardens_pearl>,("在水晶工作台中添加到宝库水晶上以添加“来生”宝库词缀，玩家死亡后不会丢失物品和装备，但获得的宝库经验减少50%。"));
mods.jei.JEI.addDescription(<item:the_vault:phoenix_feather>,("在水晶工作台中添加到宝库水晶上以添加“凤凰”宝库词缀。可以使玩家免死一次。"));

// VM Translate Group

CTEventManager.register<crafttweaker.api.event.entity.player.PlayerLoggedInEvent>((event) => {
    event.player.sendMessage(new TextComponent("<VM汉化组> 宝藏猎人").append(event.player.name.plainCopy().getString()).append("，欢迎回来！"));
    event.player.sendMessage("§b感谢您使用VM汉化组的宝藏猎人汉化包！游玩过程中的任何问题都可以通过汉化说明书中的联系方式向我们反馈！");
});
