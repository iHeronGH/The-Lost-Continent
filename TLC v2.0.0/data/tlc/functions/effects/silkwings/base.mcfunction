#> tlc:effects/silkwings/base
#
# Grants base Silkwing effects.

#region
	# Base effects
effect give @a[predicate=tlc:tribes/silkwings, tag=eoflib.atts] speed 1 1 true

	# Run Silk Spinner
execute if entity @a[predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/not_full, tag=eoflib.atts] run function tlc:effects/silkwings/silk_spinner/charge

	# Loop if there are any SilkWings
execute if entity @a[predicate=tlc:tribes/silkwings, tag=eoflib.atts] run schedule function tlc:effects/silkwings/base 1t replace

#endregion
