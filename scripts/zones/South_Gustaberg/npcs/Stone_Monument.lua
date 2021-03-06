-----------------------------------
-- Area: South Gustaberg
--  NPC: Stone Monument
--  Involved in quest "An Explorer's Footsteps"
-- !pos 520.064 -5.881 -738.356 107
-----------------------------------
package.loaded["scripts/zones/South_Gustaberg/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/South_Gustaberg/TextIDs");
-----------------------------------

function onTrigger(player,npc)
    player:startEvent(900);
end;

function onTrade(player,npc,trade)
    if (trade:getItemCount() == 1 and trade:hasItemQty(571,1)) then
        player:tradeComplete();
        player:addItem(570);
        player:messageSpecial(ITEM_OBTAINED,570);
        player:setVar("anExplorer-CurrentTablet",0x00040);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;