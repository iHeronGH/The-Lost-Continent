#> tlc:abilities/return/leafwings/all
#
# Grant the player all LeafWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/return/leafwings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/return/leafwings/all.mcfunction", "color": "aqua"}}}]

    # Grant LeafWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "fury_shift"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_6_empty] unless entity @s[tag=tlc.leafwings.sling_mode] run function tlc:abilities/return/leafwings/fury_shift/dart
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "fury_shift"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_6_empty] if entity @s[tag=tlc.leafwings.sling_mode] run function tlc:abilities/return/leafwings/fury_shift/sling
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "leafspeak"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_7_empty] run function tlc:abilities/return/leafwings/leafspeak
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "venom_aura"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_8_empty] run function tlc:abilities/return/leafwings/venom_aura

#endregion
