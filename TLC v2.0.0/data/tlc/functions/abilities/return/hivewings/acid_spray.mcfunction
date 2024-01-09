#> tlc:abilities/return/hivewings/acid_spray
#
# Grant the player the Hivewing ability Frost Breath.

#region
    # Debug 
tellraw @s "tlc:abilities/return/hivewings/acid_spray"

    # Give Frost Breath
loot replace entity @s hotbar.6 loot tlc:commands/ability/hivewings/acid_spray

#endregion
