-----------------------------------
-- Area: West Sarutabaruta
--  NPC: Twinkle Tree
-- Involved in Quest: To Catch a Falling Star
--  Note: EventID for Twinkle Tree is unknown. Quest funtions but the full event is not played.
-- !pos 156.003 -40.753 333.742 115
-----------------------------------
package.loaded["scripts/zones/West_Sarutabaruta/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/quests");
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/zones/West_Sarutabaruta/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
    local starstatus = player:getQuestStatus(WINDURST,TO_CATCH_A_FALLIHG_STAR);
    if (starstatus == 1 and VanadielHour() <= 3) then
        if (trade:getGil() == 0 and trade:hasItemQty(868,1) == true and trade:getItemCount() == 1 and player:getVar("QuestCatchAFallingStar_prog") == 0) then
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial(FROST_DEPOSIT_TWINKLES);
                player:messageSpecial(MELT_BARE_HANDS);
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,546);
            else
                player:tradeComplete(trade);
                player:messageSpecial(FROST_DEPOSIT_TWINKLES);
                player:messageSpecial(MELT_BARE_HANDS);
                player:addItem(546,1);
                player:messageSpecial(ITEM_OBTAINED,546);
                player:setVar("QuestCatchAFallingStar_prog",1);
            end
        end
    end
end;

function onTrigger(player,npc)
    if (VanadielHour() <= 3 and player:getVar("QuestCatchAFallingStar_prog") == 0) then
        player:messageSpecial(FROST_DEPOSIT_TWINKLES);
        player:messageSpecial(MELT_BARE_HANDS);
    else
        player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;



