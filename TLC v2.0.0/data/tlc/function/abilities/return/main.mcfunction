#> tlc:abilities/return/main
#
# Grant player all corresponding tribe abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:return/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/return/main.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:return/main.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/return/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:return/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/return/main.mcfunction", "color": "aqua"}}}]

    # Attempt to return abilities
        ## Tribe is blacklisted
execute if data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{"eof_data": {"ability_data": {tribe: "hivewings"}}}] if entity @s[predicate=hivewings] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Abilities could not be returned as this tribe is blacklisted. Contact an administrator if this is incorrect.", "color": "red"}]
execute if data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{"eof_data": {"ability_data": {tribe: "leafwings"}}}] if entity @s[predicate=leafwings] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Abilities could not be returned as this tribe is blacklisted. Contact an administrator if this is incorrect.", "color": "red"}]
execute if data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{"eof_data": {"ability_data": {tribe: "silkwings"}}}] if entity @s[predicate=silkwings] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Abilities could not be returned as this tribe is blacklisted. Contact an administrator if this is incorrect.", "color": "red"}]

        ## Return abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{"eof_data": {"ability_data": {tribe: "hivewings"}}}] if entity @s[predicate=tlc:tribes/hivewings] run function tlc:abilities/return/hivewings/all
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{"eof_data": {"ability_data": {tribe: "leafwings"}}}] if entity @s[predicate=tlc:tribes/leafwings] run function tlc:abilities/return/leafwings/all
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{"eof_data": {"ability_data": {tribe: "silkwings"}}}] if entity @s[predicate=tlc:tribes/silkwings] run function tlc:abilities/return/silkwings/all

#endregion
