-----------------------------------
-- Area: Windurst Walls
--   NPC: Shinchai-Tocchai
-- Type: Moghouse Renter
-- @zone 239
-- !pos -220.551 -0.001 -116.916
--
-- Auto-Script: Requires Verification (Verfied by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Windurst_Walls/TextIDs"] = nil;
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(505);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

