#> tlc:abilities/return/silkwings/silk_shot/burst
#
# Grant the player the SilkWing ability Silk Shot, Burst mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/burst.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/return/silkwings/silk_shot/burst.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_shot/burst.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/return/silkwings/silk_shot/burst.mcfunction", "color": "aqua"}}}]

    # Give Silk Shot
loot replace entity @s hotbar.6 loot tlc:commands/ability/silkwings/silk_shot/burst

#endregion
