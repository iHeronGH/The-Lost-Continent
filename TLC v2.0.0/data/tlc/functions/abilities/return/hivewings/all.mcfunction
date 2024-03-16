#> tlc:abilities/return/hivewings/all
#
# Grant the player all Hivewing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/return/hivewings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/return/hivewings/all.mcfunction", "color": "aqua"}}}]

    # Grant Hivewing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "acid_spray"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_6_empty] run function tlc:abilities/return/hivewings/acid_spray
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "hive_mind"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_7_empty] run function tlc:abilities/return/hivewings/hive_mind
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "sting_strike"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_8_empty] unless entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/paralysis
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "sting_strike"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_8_empty] if entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/poison

#endregion
