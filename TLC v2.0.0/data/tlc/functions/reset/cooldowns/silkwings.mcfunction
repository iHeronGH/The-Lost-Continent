#> tlc:reset/cooldowns/silkwings
#
# Reset all SilkWing cooldowns.

#region
	# Reset SilkWing cooldowns
scoreboard players set @s tlc.passives.silk_spinner 0
bossbar set tlc:passive/silk_spinner/0 players @a[predicate=tlc:tribes/silkwings, tag=eoflib.atts, scores={tlc.passives.silk_spinner=0..59}]
# say SilkWing cooldowns reset.

#endregion
