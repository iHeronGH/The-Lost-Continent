#> tlc:abilities/return/silkwings/sense
#
# Grant the player the SilkWing ability Sense.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:sense.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/silkwings/sense.mcfunction", "color": "aqua"}}}]

    # Give Sense
loot replace entity @s hotbar.7 loot tlc:commands/ability/silkwings/sense

#endregion
