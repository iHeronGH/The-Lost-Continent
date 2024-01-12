#> tlc:abilities/return/leafwings/all
#
# Grant the player all LeafWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/leafwings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/leafwings/all.mcfunction", "color": "aqua"}}}]

    # Grant LeafWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] unless entity @s[tag=tlc.leafwings.sling_mode] run function tlc:abilities/return/leafwings/fury_shift/dart
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] if entity @s[tag=tlc.leafwings.sling_mode] run function tlc:abilities/return/leafwings/fury_shift/sling
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function tlc:abilities/return/leafwings/leafspeak
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function tlc:abilities/return/leafwings/venom_aura

#endregion
