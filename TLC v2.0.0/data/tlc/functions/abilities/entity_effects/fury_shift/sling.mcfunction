#> tlc:abilities/entity_effects/fury_shift/sling
#
# Activate Flame Breath effects.

#region
    # Debug
# tellraw @a [{"selector": "@s", "color": "gold"}, {"text": " - ", "color": "gray"}, "tlc:abilities/effects/fury_shift/sling.mcf"]

    # Enemy effects
effect give @s slowness 4 2 true
effect give @s weakness 4 0 true

#endregion
