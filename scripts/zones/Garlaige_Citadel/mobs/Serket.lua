-----------------------------------
-- Area: Garlaige Citadel (200)
--   NM: Serket
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/titles");
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(dsp.mobMod.DRAW_IN, 1);
end;

function onMobSpawn(mob)
    mob:setMobMod(dsp.mobMod.RAGE, 1800); -- 30 minute rage timer
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(dsp.title.SERKET_BREAKER);
end;

function onMobDespawn(mob)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random(75600,86400)); -- 21 to 24 hours
end;
