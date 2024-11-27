#> tlc:abilities/cooldowns/leafwings/all
#
# Run cooldown functions for all LeafWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/cooldowns/leafwings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/cooldowns/leafwings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/cooldowns/leafwings/all.mcfunction", "color": "aqua"}}}]

    # Run ability cooldowns
execute if entity @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=tlc:abilities/cooldowns/leafwings/fury_shift] run function tlc:abilities/cooldowns/leafwings/fury_shift
execute if entity @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=tlc:abilities/cooldowns/leafwings/leafspeak] run function tlc:abilities/cooldowns/leafwings/leafspeak
execute if entity @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=tlc:abilities/cooldowns/leafwings/venom_aura] run function tlc:abilities/cooldowns/leafwings/venom_aura

#endregion
