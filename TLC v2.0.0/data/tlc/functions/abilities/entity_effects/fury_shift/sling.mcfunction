#> tlc:abilities/entity_effects/fury_shift/sling
#
# Activate Flame Breath effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:sling.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/entity_effects/fury_shift/sling.mcfunction", "color": "aqua"}}}]

    # Enemy effects
effect give @s slowness 4 2 true
effect give @s weakness 4 0 true

#endregion
