#> tlc:abilities/return/silkwings/webbing
#
# Grant the player the SilkWing ability Sting Strike, Poison mode.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:webbing.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/silkwings/webbing.mcfunction", "color": "aqua"}}}]

    # Give Sting Strike
loot replace entity @s hotbar.8 loot tlc:commands/ability/silkwings/webbing

#endregion
