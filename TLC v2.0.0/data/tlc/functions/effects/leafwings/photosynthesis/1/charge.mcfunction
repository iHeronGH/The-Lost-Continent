#> tlc:effects/leafwings/photosynthesis/1/charge
#
# Runs charge functions for the Photosynthesis passive attribute.

#region
	# Increment scores
scoreboard players set @a[tag=tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active] tlc.passives.photosynthesis 400

	# Activate Photosynthesis
execute as @a[tag=tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=400}] at @s run function tlc:effects/leafwings/photosynthesis/1/activate

#endregion
