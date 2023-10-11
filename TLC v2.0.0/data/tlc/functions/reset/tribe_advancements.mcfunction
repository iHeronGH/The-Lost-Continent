#> tlc:reset/tribe_advancements
#
# Resets the player's advancements for non-occupied tribes.

#region
	# Remove other tribe advancements
execute if entity @s[predicate=!tlc:tribes/none] run advancement revoke @s until tlc:none
execute if entity @s[predicate=!tlc:tribes/hivewings] run advancement revoke @s only tlc:hivewings
execute if entity @s[predicate=!tlc:tribes/leafwings] run advancement revoke @s only tlc:leafwings
execute if entity @s[predicate=!tlc:tribes/silkwings] run advancement revoke @s only tlc:silkwings

#endregion
