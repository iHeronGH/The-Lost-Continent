#> tlc:effects/main
#
# Applies effects to players with their effects toggled on.

#region
	# Clear other advancements
function #eoflib:reset/tribe_advancements

	# Clear other cooldowns
function #eoflib:reset/cooldowns

	# Determine effects based on tribe
execute if entity @s[predicate=tlc:tribes/hivewings, tag=eoflib.atts] run function tlc:effects/hivewings/base
execute if entity @s[predicate=tlc:tribes/leafwings, tag=eoflib.atts] run function tlc:effects/leafwings/base
execute if entity @s[predicate=tlc:tribes/silkwings, tag=eoflib.atts] run function tlc:effects/silkwings/base

#endregion
