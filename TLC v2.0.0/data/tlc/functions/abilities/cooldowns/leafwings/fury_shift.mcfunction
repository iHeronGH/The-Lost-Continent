#> tlc:abilities/cooldowns/leafwings/fury_shift
#
# Execute cooldown functions for the LeafWing ability Fury Shift.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/fury_shift.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/cooldowns/leafwings/fury_shift.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/fury_shift.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/cooldowns/leafwings/fury_shift.mcfunction", "color": "aqua"}}}]

    # Decrement cooldown
scoreboard players operation @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=tlc:abilities/cooldowns/leafwings/fury_shift] tlc.abilities.fury_shift -= #eoflib.1 eoflib.numbers
title @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=!tlc:abilities/cooldowns/leafwings/fury_shift] actionbar {"text": "Fury Shift off cooldown!", "color": "dark_green"}

#endregion
