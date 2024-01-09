#> tlc:abilities/entity_effects/acid_spray
#
# Activate Acid Spray effects.

#region
    # Debug
# tellraw @a [{"selector": "@s", "color": "gold"}, {"text": " - ", "color": "gray"}, "tlc:abilities/effects/acid_spray.mcf"]

    # Enemy effects
effect give @s wither 2 2 true
effect give @s nausea 8 0 true

#endregion
