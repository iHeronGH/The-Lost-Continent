#> tlc:effects/leafwings/photosynthesis/1/deactivate
#
# Deactivate Photosynthesis due to either a failed charge or successful cooldown.

#region
	# Remove Tags
tag @s remove tlc.passives.photosynthesis.init
tag @s remove tlc.passives.photosynthesis.active

	# Reset Score
scoreboard players set @s tlc.passives.photosynthesis 0

#endregion
