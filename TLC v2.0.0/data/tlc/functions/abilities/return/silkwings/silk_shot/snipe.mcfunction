#> tlc:abilities/return/silkwings/silk_shot/snipe
#
# Grant the player the SilkWing ability Silk Shot, Snipe mode.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:snipe.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/silkwings/silk_shot/snipe.mcfunction", "color": "aqua"}}}]

    # Give Silk Shot
loot replace entity @s hotbar.6 loot tlc:commands/ability/silkwings/silk_shot/snipe

#endregion
