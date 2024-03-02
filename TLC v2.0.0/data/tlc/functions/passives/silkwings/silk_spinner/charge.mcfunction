#> tlc:passives/silkwings/silk_spinner/charge
#
# Manage Silk Spinner charging.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_spinner/charge.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/passives/silkwings/silk_spinner/charge.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_spinner/charge.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/passives/silkwings/silk_spinner/charge.mcfunction", "color": "aqua"}}}]

    # Increase Silk Spinner score
scoreboard players add @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/not_full] tlc.passives.silk_spinner 15
scoreboard players set @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/higher_than_max] tlc.passives.silk_spinner 7200

    # Switch out Silk Snipe for Silk Burst
execute if entity @a[tag=eoflib.abils, predicate=tlc:passives/silk_spinner/4] run function #eoflib:reset/abilities

    # Bossbar visibility
bossbar set tlc:passives/silk_spinner/0 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/0_range]
bossbar set tlc:passives/silk_spinner/1 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/1_range]
bossbar set tlc:passives/silk_spinner/2 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/2_range]
bossbar set tlc:passives/silk_spinner/3 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/3_range]
bossbar set tlc:passives/silk_spinner/4 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/4_range]
bossbar set tlc:passives/silk_spinner/5 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/5]

#endregion
