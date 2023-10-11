#> tlc:effects/hivewings/base
#
# Grants base HiveWing effects.

#region
	# Base Effects
effect give @a[predicate=tlc:tribes/hivewings, tag=eoflib.atts] strength 1 1 true

	# Loop if there are any HiveWings
execute if entity @a[predicate=tlc:tribes/hivewings, tag=eoflib.atts] run schedule function tlc:effects/hivewings/base 1t replace

#endregion
