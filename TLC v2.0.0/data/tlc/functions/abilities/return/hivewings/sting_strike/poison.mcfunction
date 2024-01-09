#> tlc:abilities/return/hivewings/sting_strike/poison
#
# Grant the player the HiveWing ability Sting Strike, Poison mode.

#region
    # Give Sting Strike
loot replace entity @s hotbar.8 loot tlc:commands/ability/hivewings/sting_strike/poison

    # Correct tags
tag @s add tlc.hivewings.poison_mode
tag @s remove tlc.hivewings.paralysis_mode

#endregion
