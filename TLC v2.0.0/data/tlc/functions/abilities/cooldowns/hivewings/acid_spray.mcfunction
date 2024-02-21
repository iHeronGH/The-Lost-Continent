#> tlc:abilities/cooldowns/hivewings/acid_spray
#
# Execute cooldown functions for the HiveWing abilitiy Acid Spray.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/acid_spray.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/cooldowns/hivewings/acid_spray.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/acid_spray.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/cooldowns/hivewings/acid_spray.mcfunction", "color": "aqua"}}}]

    # Decrement cooldown
scoreboard players operation @a[tag=tlc.cooldown.active, predicate=tlc:tribes/hivewings, predicate=tlc:abilities/cooldowns/hivewings/acid_spray] tlc.abilities.acid_spray -= #eoflib.1 eoflib.numbers
title @a[tag=tlc.cooldown.active, predicate=tlc:tribes/hivewings, predicate=!tlc:abilities/cooldowns/hivewings/acid_spray] actionbar {"text": "Acid Spray off cooldown!", "color": "gold"}

#endregion
