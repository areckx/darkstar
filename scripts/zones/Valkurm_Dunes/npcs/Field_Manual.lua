-----------------------------------
-- Area: Valkurm Dunes
--  NPC: Field Manual
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/fieldsofvalor");
-----------------------------------

function onTrigger(player,npc)
    startFov(FOV_EVENT_VALKURM,player);
end;

function onTrade(player,npc,trade)
end;

function onEventUpdate(player,csid,menuchoice)
    updateFov(player,csid,menuchoice,7,8,9,10,57);
end;

function onEventFinish(player,csid,option)
    finishFov(player,csid,option,7,8,9,10,57,FOV_MSG_VALKURM);
end;
