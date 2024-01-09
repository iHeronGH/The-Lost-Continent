#> tlc:reset/cooldowns/silkwings
#
# Reset all SilkWing cooldowns.

#region
    # Reset SilkWing cooldowns
scoreboard players set @a[predicate=!tlc:tribes/silkwings] tlc.passives.silk_spinner 0
bossbar set tlc:passives/silk_spinner/0 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/0]
bossbar set tlc:passives/silk_spinner/1 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/1]
bossbar set tlc:passives/silk_spinner/2 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/2]
bossbar set tlc:passives/silk_spinner/3 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/3]
bossbar set tlc:passives/silk_spinner/4 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/4]
bossbar set tlc:passives/silk_spinner/5 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/5]

#endregion
