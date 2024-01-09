#> tlc:abilities/entity_effects/silk_shot/snipe
#
# Activate Silk Shot effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:abilities/entity_effects/silk_shot/snipe.mcf", "color": "gold"}]

    # Enemy effects
damage @s 1.5 generic
effect give @s mining_fatigue 4 0 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/1] run effect give @s slowness 4 0 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/2] run effect give @s slowness 5 0 true
execute if entity @p[tag=eoflib.ray_active, predicate=tlc:passives/silk_spinner/3] run effect give @s slowness 5 1 true

#endregion
