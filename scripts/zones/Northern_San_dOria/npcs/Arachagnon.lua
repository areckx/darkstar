-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Arachagnon
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/zones/Northern_San_dOria/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
    -- "Flyers for Regine" conditional script
    local FlyerForRegine = player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE);

    if (FlyerForRegine == 1) then
        local count = trade:getItemCount();
        local MagicFlyer = trade:hasItemQty(532,1);
        if (MagicFlyer == true and count == 1) then
            player:messageSpecial(FLYER_REFUSED);
        end
    end
end;

function onTrigger(player,npc)
    player:showText(npc,ARACHAGNON_SHOP_DIALOG);

    local stock = {0x3159,270, --Elvaan Jerkin
             0x315a,270, --Elvaan Bodice
             0x31d3,162, --Elvaan Gloves
             0x31d7,162, --Elvaan Gauntlets
             0x3255,234, --Elvaan M Chausses
             0x3259,234, --Elvaan F Chausses
             0x32ce,162, --Elvaan M Ledelsens
             0x32d3,162} --Elvaan F Ledelsens

    dsp.shop.general(player, stock, SANDORIA);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

