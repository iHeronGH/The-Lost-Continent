#> tlc:abilities/return/silkwings/all
#
# Grant the player all SilkWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/tlc/functions/abilities/return/silkwings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/tlc/functions/abilities/return/silkwings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/tlc/functions/abilities/return/silkwings/all.mcfunction", "color": "aqua"}}}]

    # Grant SilkWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "silk_shot"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] if entity @s[predicate=!tlc:passives/silk_spinner/silk_burst] run function tlc:abilities/return/silkwings/silk_shot/snipe
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "silk_shot"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] if entity @s[predicate=tlc:passives/silk_spinner/silk_burst] run function tlc:abilities/return/silkwings/silk_shot/burst
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "sense"}}}] if entity @s[predicate=eoflib:inventory/ability/secondary_empty] run function tlc:abilities/return/silkwings/sense
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "webbing"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] run function tlc:abilities/return/silkwings/webbing

#endregion
