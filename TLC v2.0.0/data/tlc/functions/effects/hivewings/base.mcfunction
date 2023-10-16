#> tlc:effects/hivewings/base
#
# Grants base HiveWing effects.

#region
	# Base effects
effect give @a[predicate=tlc:tribes/hivewings, tag=eoflib.atts] strength 1 1 true

	# Check for Synchrosocial effects
execute as @a[predicate=tlc:tribes/hivewings] at @s store result score @s tlc.passives.synchrosocial run execute if entity @a[predicate=tlc:tribes/hivewings, distance=0.1..8]
execute if entity @a[predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/1, tag=eoflib.atts] run function tlc:effects/hivewings/synchrosocial/1
execute if entity @a[predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/2, tag=eoflib.atts] run function tlc:effects/hivewings/synchrosocial/2
execute if entity @a[predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/3, tag=eoflib.atts] run function tlc:effects/hivewings/synchrosocial/3

	# Loop if there are any HiveWings
execute if entity @a[predicate=tlc:tribes/hivewings, tag=eoflib.atts] run schedule function tlc:effects/hivewings/base 1t replace

#endregion
