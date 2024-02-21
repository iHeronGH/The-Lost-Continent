#> tlc:abilities/cooldowns/hivewings/all
#
# Execute cooldown functions for all HiveWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc.functions/abilities/cooldowns/hivewings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc.functions/abilities/cooldowns/hivewings/all.mcfunction", "color": "aqua"}}}]

    # Run ability cooldowns
execute if entity @a[tag=tlc.cooldown.active, predicate=tlc:tribes/hivewings, predicate=tlc:abilities/cooldowns/hivewings/acid_spray] run function tlc:abilities/cooldowns/hivewings/acid_spray
execute if entity @a[tag=tlc.cooldown.active, predicate=tlc:tribes/hivewings, predicate=tlc:abilities/cooldowns/hivewings/hive_mind] run function tlc:abilities/cooldowns/hivewings/hive_mind
execute if entity @a[tag=tlc.cooldown.active, predicate=tlc:tribes/hivewings, predicate=tlc:abilities/cooldowns/hivewings/sting_strike] run function tlc:abilities/cooldowns/hivewings/sting_strike

#endregion
