#> tlc:abilities/lookup/primary
#
# Lookup for primary ability used.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:lookup/primary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/lookup/primary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:lookup/primary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/lookup/primary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:lookup/primary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/lookup/primary.mcfunction", "color": "aqua"}}}]

    # Lookup ability used
execute if entity @s[predicate=tlc:abilities/criteria/hivewings/acid_spray, predicate=!tlc:abilities/cooldowns/hivewings/acid_spray] run function tlc:abilities/activate/hivewings/acid_spray
execute if entity @s[predicate=tlc:abilities/criteria/leafwings/fury_shift/use] run function tlc:abilities/activate/leafwings/fury_shift/use
execute if entity @s[predicate=tlc:abilities/criteria/leafwings/fury_shift/activate, predicate=!tlc:abilities/cooldowns/leafwings/fury_shift] run function tlc:abilities/activate/leafwings/fury_shift/activate
execute if entity @s[predicate=tlc:abilities/criteria/silkwings/silk_shot, predicate=!tlc:abilities/cooldowns/hivewings/acid_spray] run function tlc:abilities/activate/silkwings/silk_shot

#endregion
