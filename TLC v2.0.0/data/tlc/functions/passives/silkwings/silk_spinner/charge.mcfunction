#> tlc:passives/silkwings/silk_spinner/charge
#
# Manage Silk Spinner charging.

#region
    # Increase Silk Spinner score
scoreboard players add @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/not_full] tlc.passives.silk_spinner 15

    # Bossbar visibility
bossbar set tlc:passives/silk_spinner/0 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/0]
bossbar set tlc:passives/silk_spinner/1 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/1]
bossbar set tlc:passives/silk_spinner/2 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/2]
bossbar set tlc:passives/silk_spinner/3 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/3]
bossbar set tlc:passives/silk_spinner/4 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/4]
bossbar set tlc:passives/silk_spinner/5 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/5]

#endregion
