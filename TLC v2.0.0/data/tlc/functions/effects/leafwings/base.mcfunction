#> tlc:effects/leafwings/base
#
# Grants base Leafwing effects.

#region
	# Base effects
effect give @a[predicate=tlc:tribes/leafwings, tag=eoflib.atts] strength 1 0 true
effect give @a[predicate=tlc:tribes/leafwings, tag=eoflib.atts] speed 1 0 true

	# Check for Photosynthesis effects
execute if entity @a[predicate=tlc:tribes/leafwings, predicate=tlc:passives/photosynthesis/1, tag=eoflib.atts] run function tlc:effects/leafwings/photosynthesis/init

	# Loop if there are any LeafWings
execute if entity @a[predicate=tlc:tribes/leafwings, tag=eoflib.atts] run schedule function tlc:effects/leafwings/base 1t replace

#endregion
