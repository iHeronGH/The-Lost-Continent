#> tlc:abilities/entity_effects/silk_shot/burst
#
# Activate Silk Shot effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:burst.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/entity_effects/silk_shot/burst.mcfunction", "color": "aqua"}}}]

    # Enemy effects
damage @s 2 generic
effect give @s mining_fatigue 4 1 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/4] run effect give @s slowness 4 2 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/5] run effect give @s slowness 5 2 true

#endregion
