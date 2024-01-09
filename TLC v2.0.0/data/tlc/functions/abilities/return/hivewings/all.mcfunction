#> tlc:abilities/return/hivewings/all
#
# Grant the player all Hivewing abilities.

#region
    # Debug
tellraw @s "tlc:abilities/return/hivewings/all"

    # Grant Hivewing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function tlc:abilities/return/hivewings/acid_spray
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function tlc:abilities/return/hivewings/hive_mind
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] unless entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/paralysis
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] if entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/poison

#endregion
