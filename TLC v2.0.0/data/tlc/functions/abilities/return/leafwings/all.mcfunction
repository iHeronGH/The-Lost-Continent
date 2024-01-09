#> tlc:abilities/return/leafwings/all
#
# Grant the player all LeafWing abilities.

#region
    # Debug
tellraw @s "tlc:abilities/return/leafwings/all"

    # Grant LeafWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] unless entity @s[tag=tlc.leafwings.sling_mode] run function tlc:abilities/return/leafwings/fury_shift/dart
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] if entity @s[tag=tlc.leafwings.sling_mode] run function tlc:abilities/return/leafwings/fury_shift/sling
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function tlc:abilities/return/leafwings/leafspeak
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function tlc:abilities/return/leafwings/venom_aura

#endregion
