#> tlc:abilities/return/hivewings/all
#
# Grant the player all Hivewing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/return/hivewings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/return/hivewings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/return/hivewings/all.mcfunction", "color": "aqua"}}}]

    # Remove previous HiveWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "primary"}}}] unless data storage eoflib:config eoflib:admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "acid_spray"}}}] run clear @s #eoflib:items[minecraft:custom_data~{"eof_data": {"ability_data": {name: "acid_spray"}}}]
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "secondary"}}}] unless data storage eoflib:config eoflib:admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "hive_mind"}}}] run clear @s #eoflib:items[minecraft:custom_data~{"eof_data": {"ability_data": {name: "hive_mind"}}}]
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "tertiary"}}}] unless data storage eoflib:config eoflib:admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "sting_strike"}}}] run clear @s #eoflib:items[minecraft:custom_data~{"eof_data": {"ability_data": {name: "sting_strike"}}}]

    # Grant HiveWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "primary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "acid_spray"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] run function tlc:abilities/return/hivewings/acid_spray
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "secondary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "hive_mind"}}}] if entity @s[predicate=eoflib:inventory/ability/secondary_empty] run function tlc:abilities/return/hivewings/hive_mind
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "tertiary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "sting_strike"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] unless entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/paralysis
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "tertiary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "sting_strike"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] if entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/poison

#endregion
