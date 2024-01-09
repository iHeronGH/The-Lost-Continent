#> tlc:abilities/entity_effects/silk_shot/burst
#
# Activate Silk Shot effects.

#region
    # Debug
tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "]", "color": "gray"}, {"text": " - ", "color": "gray"}, {"text": "tlc:abilities/effects/silk_shot/burst.mcf", "color": "gold"}]

    # Enemy effects
damage @s 2 generic
effect give @s mining_fatigue 4 1 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/4] run effect give @s slowness 4 2 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/5] run effect give @s slowness 5 2 true

#endregion
