-----------------------------------------
-- Ability: Mana Wall
-----------------------------------------
-- https://www.bg-wiki.com/bg/Mana_Wall
-- Reduces damage to 50% and applies to MP instead of HP
-- (before cap bonus gear, with no settings.lua adjustment)
require("scripts/globals/status");
require("scripts/globals/ability");
require("scripts/globals/msg");
-----------------------------------------

function onAbilityCheck(player,target,ability)
    -- Stacks with phalanx/stoneskin

    return 0;
end;

function onUseAbility(player,target,ability)

    -- The formula is: ( Damage * (1-DT%) - Phalanx - Stoneskin ) * (1-Mana Wall %)

    return EFFECT_MANA_WALL;
end;
