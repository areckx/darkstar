-----------------------------------
-- Area: Castle Oztroja
--  NPC: _47j (Torch Stand)
-- Notes: Opens door _472 near password #1
-- !pos -62.533 -1.859 -30.634 151
-----------------------------------
package.loaded["scripts/zones/Castle_Oztroja/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Castle_Oztroja/TextIDs");
require("scripts/globals/settings");
-----------------------------------

function onTrigger(player,npc)

    local DoorID = npc:getID() - 4;
    local DoorA = GetNPCByID(DoorID):getAnimation();
    local TorchStandA = npc:getAnimation();
    local Torch2 = npc:getID();
    local Torch1 = npc:getID() - 1;

    if (DoorA == 9 and TorchStandA == 9) then
        player:startEvent(10);
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)

    local Torch2 = GetNPCByID(17396169):getID();
    local Torch1 = GetNPCByID(Torch2):getID() - 1;
    local DoorID = GetNPCByID(Torch2):getID() - 4;

    if (option == 1) then
        GetNPCByID(Torch1):openDoor(10); -- Torch Lighting
        GetNPCByID(Torch2):openDoor(10); -- Torch Lighting
        GetNPCByID(DoorID):openDoor(6);
    end

end;

    -- printf("RESULT: %u",option);