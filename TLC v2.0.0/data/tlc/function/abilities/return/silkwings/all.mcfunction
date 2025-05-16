#> tlc:abilities/return/silkwings/all
#
# Grant the player all SilkWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/return/silkwings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/all.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/return/silkwings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/return/silkwings/all.mcfunction", "color": "aqua"}}}]

    # Remove previous SilkWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "primary"}}}] unless data storage eoflib:config eoflib:admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "silk_shot"}}}] run clear @s #eoflib:items[minecraft:custom_data~{"eof_data": {"ability_data": {name: "silk_shot"}}}]
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "secondary"}}}] unless data storage eoflib:config eoflib:admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "metamorphosis"}}}] run clear @s #eoflib:items[minecraft:custom_data~{"eof_data": {"ability_data": {name: "metamorphosis"}}}]
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "tertiary"}}}] unless data storage eoflib:config eoflib:admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "webbing"}}}] run clear @s #eoflib:items[minecraft:custom_data~{"eof_data": {"ability_data": {name: "webbing"}}}]

    # Grant SilkWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "primary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "silk_shot"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] if entity @s[predicate=!tlc:passives/silk_spinner/silk_burst] run function tlc:abilities/return/silkwings/silk_shot/snipe
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "primary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "silk_shot"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] if entity @s[predicate=tlc:passives/silk_spinner/silk_burst] run function tlc:abilities/return/silkwings/silk_shot/burst
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "secondary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "metamorphosis"}}}] if entity @s[predicate=eoflib:inventory/ability/secondary_empty] run function tlc:abilities/return/silkwings/metamorphosis
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{"eof_data": {"ability_data": {archetype: "tertiary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "webbing"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] run function tlc:abilities/return/silkwings/webbing

#endregion
