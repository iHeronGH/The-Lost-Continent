#> tlc:abilities/block_effects/silk_shot
#
# Activate Silk Shot effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:silk_shot.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/block_effects/silk_shot.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute positioned ^ ^ ^-0.4 run particle cloud ~ ~ ~ 0.25 0.25 0.25 0.033 20

#endregion
