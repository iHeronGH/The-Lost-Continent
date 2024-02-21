#> tlc:abilities/cooldowns/hivewings/sting_strike
#
# Execute cooldown functions for the HiveWing abilitiy Sting Strike.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/sting_strike.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/cooldowns/hivewings/sting_strike.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/sting_strike.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/cooldowns/hivewings/sting_strike.mcfunction", "color": "aqua"}}}]

    # Decrement cooldown
scoreboard players operation @a[tag=tlc.cooldown.active, predicate=tlc:tribes/hivewings, predicate=tlc:abilities/cooldowns/hivewings/sting_strike] tlc.abilities.sting_strike -= #eoflib.1 eoflib.numbers
title @a[tag=tlc.cooldown.active, predicate=tlc:tribes/hivewings, predicate=!tlc:abilities/cooldowns/hivewings/sting_strike] actionbar {"text": "Sting Strike off cooldown!", "color": "white"}

#endregion
