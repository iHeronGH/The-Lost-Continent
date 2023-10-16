#> tlc:effects/silkwings/silk_spinner/charge
#
# Manage Silk Spinner events.

#region
	# Increase Silk Spinner score
scoreboard players add @a[predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/not_full, tag=eoflib.atts] tlc.passives.silk_spinner 15

	# Bossbar visibility
bossbar set tlc:passive/silk_spinner/0 players @a[predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/0, tag=eoflib.atts]
bossbar set tlc:passive/silk_spinner/1 players @a[predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/1, tag=eoflib.atts]
bossbar set tlc:passive/silk_spinner/2 players @a[predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/2, tag=eoflib.atts]
bossbar set tlc:passive/silk_spinner/3 players @a[predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/3, tag=eoflib.atts]
bossbar set tlc:passive/silk_spinner/4 players @a[predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/4, tag=eoflib.atts]
bossbar set tlc:passive/silk_spinner/5 players @a[predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/5, tag=eoflib.atts]

#endregion
