#> tlc:abilities/lookup/tertiary
#
# Lookup for tertiary ability used.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:lookup/tertiary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/lookup/tertiary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:lookup/tertiary.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/lookup/tertiary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:lookup/tertiary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/lookup/tertiary.mcfunction", "color": "aqua"}}}]

    # Lookup ability used
execute if entity @s[predicate=tlc:abilities/criteria/hivewings/sting_strike/use] run function tlc:abilities/activate/hivewings/sting_strike/use
execute if entity @s[predicate=tlc:abilities/criteria/hivewings/sting_strike/activate, predicate=!tlc:abilities/cooldowns/hivewings/sting_strike] run function tlc:abilities/activate/hivewings/sting_strike/activate
execute if entity @s[predicate=tlc:abilities/criteria/leafwings/venom_aura, predicate=!tlc:abilities/cooldowns/leafwings/venom_aura] run function tlc:abilities/activate/leafwings/venom_aura/activate
execute if entity @s[predicate=tlc:abilities/criteria/silkwings/webbing, predicate=!tlc:abilities/cooldowns/silkwings/webbing] run function tlc:abilities/activate/silkwings/webbing/activate

#endregion
