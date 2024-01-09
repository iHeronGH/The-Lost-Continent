#> tlc:reset/cooldowns/leafwings
#
# Reset all LeafWing cooldowns.

#region
    # Reset LeafWing cooldowns
scoreboard players set @a[predicate=!tlc:tribes/leafwings] tlc.passives.photosynthesis 0
# say LeafWing cooldowns reset.

#endregion
