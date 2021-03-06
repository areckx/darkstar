-----------------------------------
-- Area: Metalworks
--  NPC: Nogga
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

    player:showText(npc,NOGGA_SHOP_DIALOG);

    local stock =
    {
        0x43A4,675,2,        -- Bomb Arm

     0x43A1,1083,3,        -- Grenade
     0x0ae8,92,3}        -- Catalytic Oil

dsp.shop.nation(player, stock, dsp.nation.BASTOK);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

