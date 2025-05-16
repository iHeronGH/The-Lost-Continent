#> tlc:abilities/lookup/secondary
#
# Lookup for secondary ability used.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:lookup/secondary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/lookup/secondary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:lookup/secondary.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/lookup/secondary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:lookup/secondary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/lookup/secondary.mcfunction", "color": "aqua"}}}]

    # Lookup ability used
execute if entity @s[predicate=tlc:abilities/criteria/hivewings/hive_mind, predicate=!tlc:abilities/cooldowns/hivewings/hive_mind] run function tlc:abilities/activate/hivewings/hive_mind
execute if entity @s[predicate=tlc:abilities/criteria/leafwings/leafspeak, predicate=!tlc:abilities/cooldowns/leafwings/leafspeak] run function tlc:abilities/activate/leafwings/leafspeak
execute if entity @s[predicate=tlc:abilities/criteria/silkwings/metamorphosis, predicate=!tlc:abilities/cooldowns/silkwings/metamorphosis] run function tlc:abilities/activate/silkwings/metamorphosis

#endregion
