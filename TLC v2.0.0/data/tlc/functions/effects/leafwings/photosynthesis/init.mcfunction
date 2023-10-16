#> tlc:effects/leafwings/photosynthesis/init
#
# Initialise Photosynthesis charging.

#region
	# Add Tags
tag @a[predicate=tlc:passives/photosynthesis/1, tag=eoflib.atts, tag=!tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active] add tlc.passives.photosynthesis.init

	# Charge
function tlc:effects/leafwings/photosynthesis/1/charge

#endregion
