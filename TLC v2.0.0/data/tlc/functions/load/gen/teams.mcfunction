#> tlc:load/gen/teams
#
# Generates The Lost Continent teams.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:gen/teams.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/teams.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:gen/teams.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/teams.mcfunction", "color": "aqua"}}}]

    # Create tribe teams
team add HiveWing
team add LeafWing
team add SilkWing

    # Team modifiers
team modify HiveWing color gold
team modify LeafWing color dark_green
team modify SilkWing color light_purple

#endregion
