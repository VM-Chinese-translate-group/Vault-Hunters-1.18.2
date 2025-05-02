// made by DrIceTea  method from middlewhite
// fix a bug that Create Deployer can duplicate Drawer when breaking it with an axe

import crafttweaker.api.events.CTEventManager;


CTEventManager.register<crafttweaker.api.event.block.BlockBreakEvent>((event) => {
    if(event.state.block.registryName.getNamespace() == "storagedrawers"){
		if (event.player.getExperienceLevel() == 0) {
            event.player.sendMessage("§7为阻止某物品作弊漏洞，破坏该方块时至少要有1级原版经验！");
            event.player.sendMessage("§7如果你不希望启用此漏洞修复，请删除scripts文件夹下的createbugfix.zs");
			event.setCanceled(true);
		}
    }
});
