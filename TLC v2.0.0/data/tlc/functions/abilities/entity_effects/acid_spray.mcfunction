#> tlc:abilities/entity_effects/acid_spray
#
# Activate Acid Spray effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:acid_spray.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/entity_effects/acid_spray.mcfunction", "color": "aqua"}}}]

    # Enemy effects
effect give @s wither 2 2 true
effect give @s nausea 8 0 true

#endregion
