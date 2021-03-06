-----------------------------------
-- Area: Metalworks
--  NPC: Olaf
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Metalworks/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/shop");
require("scripts/zones/Metalworks/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    player:showText(npc,OLAF_SHOP_DIALOG);

    local stock =
    {
        0x4360,46836,2,        -- Arquebus
        0x43BC,90,3,        -- Bullet
        0x03A0,463,3}        -- Bomb Ash

dsp.shop.nation(player, stock, dsp.nation.BASTOK);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

