#> tlc:abilities/entity_effects/fury_shift/dart
#
# Activate Flame Breath effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:dart.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/entity_effects/fury_shift/dart.mcfunction", "color": "aqua"}}}]

    # Enemy effects
effect give @s poison 3 1 true

#endregion
