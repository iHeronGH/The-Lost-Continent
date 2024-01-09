#> tlc:passives/leafwings/photosynthesis/1/cooldown
#
# Loops the cooldown for the passive ability Photosynthesis.

#region
    # Decrement Score
scoreboard players remove @a[tag=tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=1..}] tlc.passives.photosynthesis 1

    # Reset
execute if entity @a[tag=tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=0}] as @a[tag=tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=0}] run function tlc:passives/leafwings/photosynthesis/1/deactivate

    # Loop
execute if entity @a[tag=tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=1..}] run schedule function tlc:passives/leafwings/photosynthesis/1/cooldown 1t

#endregion
