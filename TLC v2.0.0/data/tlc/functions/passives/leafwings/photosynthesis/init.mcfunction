#> tlc:passives/leafwings/photosynthesis/init
#
# Initialise Photosynthesis charging.

#region
    # Add Tags
tag @a[tag=eoflib.atts, tag=!tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active, predicate=tlc:tribes/leafwings, predicate=tlc:passives/photosynthesis/1] add tlc.passives.photosynthesis.init

    # Charge
function tlc:passives/leafwings/photosynthesis/1/charge

#endregion
