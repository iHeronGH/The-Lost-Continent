#> tlc:effects/leafwings/base
#
# Grants base Leafwing effects.

#region
	# Base Effects
effect give @a[predicate=tlc:tribes/leafwings, tag=eoflib.atts] strength 1 0 true
effect give @a[predicate=tlc:tribes/leafwings, tag=eoflib.atts] speed 1 0 true

	# Check for Photosynthesis Effects
execute if entity @a[predicate=tlc:tribes/leafwings, predicate=tlc:passives/photosynthesis/1, tag=eoflib.atts] run function tlc:effects/leafwings/photosynthesis/1

	# Loop if there are any LeafWings
execute if entity @a[predicate=tlc:tribes/leafwings, tag=eoflib.atts] run schedule function tlc:effects/leafwings/base 1t replace

#endregion
