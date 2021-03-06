-----------------------------------------
-- ID: 5935
-- Item: Bowl of Moogurt
-- Food Effect: 30Min, All Races
-----------------------------------------
-- HP % 20 Cap 20
-- Vitality 3
-- HP Healing 3
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,1800,5935);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(dsp.mod.FOOD_HPP, 20);
    target:addMod(dsp.mod.FOOD_HP_CAP, 20);
    target:addMod(dsp.mod.VIT, 3);
    target:addMod(dsp.mod.HPHEAL, 3);
end;

function onEffectLose(target, effect)
    target:delMod(dsp.mod.FOOD_HPP, 20);
    target:delMod(dsp.mod.FOOD_HP_CAP, 20);
    target:delMod(dsp.mod.VIT, 3);
    target:delMod(dsp.mod.HPHEAL, 3);
end;
