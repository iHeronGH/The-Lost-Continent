#> tlc:abilities/entity_effects/silk_shot/burst
#
# Activate Silk Shot effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/burst.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/entity_effects/silk_shot/burst.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/burst.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/entity_effects/silk_shot/burst.mcfunction", "color": "aqua"}}}]

    # Enemy effects
damage @s 2 generic
effect give @s mining_fatigue 4 1 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/4_range] run effect give @s slowness 4 2 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/5] run effect give @s slowness 5 2 true

#endregion
