#> tlc:abilities/return/hivewings/all
#
# Grant the player all Hivewing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/tlc/functions/abilities/return/hivewings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/tlc/functions/abilities/return/hivewings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/tlc/functions/abilities/return/hivewings/all.mcfunction", "color": "aqua"}}}]

    # Grant HiveWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "acid_spray"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] run function tlc:abilities/return/hivewings/acid_spray
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "hive_mind"}}}] if entity @s[predicate=eoflib:inventory/ability/secondary_empty] run function tlc:abilities/return/hivewings/hive_mind
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "sting_strike"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] unless entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/paralysis
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "sting_strike"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] if entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/poison

#endregion
