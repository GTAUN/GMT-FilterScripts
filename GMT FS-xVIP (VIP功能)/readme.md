◆脚本名称	XVIP
  脚本信息	http://forum.sa-mp.com/showthread.php?t=379903

本脚本所需插件列表:
pawn Code:
●YSI:Y_ini	用作保存VIP玩家数据	作者:Y_LESS		地址:http://forum.sa-mp.com/showthread.php?t=321092

●SSCANF		用作脚本数据结构	作者:Y_LESS		地址:http://forum.sa-mp.com/showthread.php?t=120356

●Streamer	用作脚本物件		作者:Incognito 		地址:http://code.google.com/p/samp-streamer-plugin/downloads/list

●ZCMD		用作脚本命令		作者:ZeeX		地址:http://forum.sa-mp.com/showthread.php?t=91354


◆指令集
pawn Code:
●Vcar 		刷出VIP专用 CHEEATH

●Vbike		刷出VIP专用 NRG

●VHeli		刷出VIP专用 Maverick

●Vboat		刷出VIP专用  JetMax

●VPlane		刷出VIP专用  Shamal 

●VHeal		恢复满血(仅允许复活后使用)

●VArmour	恢复满护甲(仅允许复活后使用)

●VWeap 		给予专属武器(仅允许复活后使用)

●VCarGod	设置无敌车

●Balloonscmds	气球系统,可以带玩家飞翔
 
●vtunecmds	VIP专属 Infernus 以及 Bullet 改装

●vnos		VIP专属无限氮气加速

●vcolor		VIP专属昵称颜色

●vccarcolor	VIP专属汽车颜色
 
●vskin		VIP专属更改皮肤

●vspec 		VIP专属观察玩家模式
|vspecoff

●vweather	VIP专属天气修改

●visland	VIP专属岛屿
 
●vsay		VIP专属世界聊天
 
●vkick		VIP专属T人权限

●vdick		雄性VIP专属香肠...

●vannounce	VIP广播

●vshop		VIP应用商城
 
●vfeature	VIP内部大喇叭
 
●vironman	钢铁侠模式
 
●vgoto		VIP可以传送到任何地方

●vstats		简易列表

●VIPS 		VIP可用命令列表
 
 
================================

每次杀人后:
VIP1 获得700$击杀奖励以及1积分奖励
VIP2 获得900$击杀奖励以及1积分奖励
VIP3 获得1000$击杀奖励以及1积分奖励

===============================
◆自定义新指令指南

pawn Code:

CMD:mycommand(playerid, params[])
{
	if (Vip[playerid] >= 1)//level here
	{
		//Do something here
	} 
	else 
	{
		SendClientMessage(playerid,COLOR_RED,"ERROR: Your not a VIP");
	}
	return 1;
}

◆鸣谢


XtremeR		脚本设计
Tannz0rz 	钢铁侠
Speederx 	专属岛屿
Jarnu 		创意
Zh3ro 		男人香肠..(不大正经)
Lethal 		部分指令
[xB]Lordz	部分建议
Y_LESS 		Y_ini
Zeex 	 	ZCMD
GMT-Yin.J	汉化

◆最新版本

pawn Code:
V1.1
新增/vsavepos /vloadpos /vjetpack
添加/vdick /VGOD 提示信息

修复部分BUG
新增读取上次在线数据
