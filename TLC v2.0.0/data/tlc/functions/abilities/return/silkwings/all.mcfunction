#> tlc:abilities/return/silkwings/all
#
# Grant the player all SilkWing abilities.

#region
    # Debug
tellraw @s "tlc:abilities/return/silkwings/all"

    # Grant SilkWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] if entity @s[predicate=tlc:passives/silk_spinner/silk_snipe] run function tlc:abilities/return/silkwings/silk_shot/snipe
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] if entity @s[predicate=tlc:passives/silk_spinner/silk_burst] run function tlc:abilities/return/silkwings/silk_shot/burst
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function tlc:abilities/return/silkwings/sense
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function tlc:abilities/return/silkwings/webbing

#endregion
