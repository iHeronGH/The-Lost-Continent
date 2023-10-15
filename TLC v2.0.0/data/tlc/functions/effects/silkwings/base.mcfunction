#> tlc:effects/silkwings/base
#
# Grants base Silkwing effects.

#region
	# Base Effects
effect give @a[predicate=tlc:tribes/silkwings, tag=eoflib.atts] speed 1 1 true

	# Loop if there are any SilkWings
execute if entity @a[predicate=tlc:tribes/silkwings, tag=eoflib.atts] run schedule function tlc:effects/silkwings/base 1t replace

#endregion
