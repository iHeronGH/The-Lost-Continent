#> tlc:reset/tribe_advancements
#
# Resets the player's advancements for non-occupied tribes.

#region
    # Remove other tribe advancements
execute if entity @s[predicate=!tlc:tribes/none] run advancement revoke @s only tlc:none
execute if entity @s[predicate=!tlc:tribes/pantalan] run advancement revoke @s only tlc:pantalan

#endregion
