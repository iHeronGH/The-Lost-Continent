#> tlc:effects/leafwings/photosynthesis/1/activate
#
# Activate Photosynthesis when successfully charged.

#region
	# Effect Entities
effect give @s regeneration 2 1 true

	# Reset
		## Correct Tags
tag @s remove tlc.passives.photosynthesis.init
tag @s add tlc.passives.photosynthesis.active

		## Initiate Cooldown
schedule function tlc:effects/leafwings/photosynthesis/1/cooldown 1t replace

#endregion
