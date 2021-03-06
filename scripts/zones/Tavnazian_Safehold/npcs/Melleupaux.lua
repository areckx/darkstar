-----------------------------------
-- Area: Tavnazian Safehold
--  NPC: Melleupaux
-- Standard Merchant NPC
-----------------------------------
require("scripts/globals/shop");
package.loaded["scripts/zones/Tavnazian_Safehold/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Tavnazian_Safehold/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    player:showText(npc,MELLEUPAUX_SHOP_DIALOG);

    local stock =
    {
        0x4042,1867,    --Dagger
    0x40b6,8478,    --Longsword
    0x43B7,8,    --Rusty Bolt
    0x47C7,93240,    --Falx (COP Chapter 4 Needed; not implemented yet)
    0x4726,51905}    --Voulge (COP Chapter 4 Needed; not implemented yet)

    dsp.shop.general(player, stock);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

