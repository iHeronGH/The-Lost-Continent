#> tlc:abilities/entity_effects/silk_shot/snipe
#
# Activate Silk Shot effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/snipe.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/entity_effects/silk_shot/snipe.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/snipe.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/entity_effects/silk_shot/snipe.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/snipe.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/entity_effects/silk_shot/snipe.mcfunction", "color": "aqua"}}}]

    # Enemy effects
damage @s 1.5 generic
effect give @s mining_fatigue 4 0 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/1_range] run effect give @s slowness 4 0 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/2_range] run effect give @s slowness 5 0 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/3_range] run effect give @s slowness 5 1 true

#endregion
