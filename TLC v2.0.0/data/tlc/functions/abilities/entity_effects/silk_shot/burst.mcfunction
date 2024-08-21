#> tlc:abilities/entity_effects/silk_shot/burst
#
# Activate Silk Shot effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/burst.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/entity_effects/silk_shot/burst.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/burst.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/entity_effects/silk_shot/burst.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/burst.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/entity_effects/silk_shot/burst.mcfunction", "color": "aqua"}}}]

    # Enemy effects
damage @s 2 generic
effect give @s mining_fatigue 4 1 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/4_range] run effect give @s slowness 4 2 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/5] run effect give @s slowness 5 2 true

#endregion
