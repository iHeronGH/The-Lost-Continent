#> tlc:load/gen/teams
#
# Generates The Lost Continent teams.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:teams.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/teams.mcfunction", "color": "aqua"}}}]

    # Create tribe teams
team add HiveWing
team add LeafWing
team add SilkWing

    # Team modifiers
team modify HiveWing color gold
team modify LeafWing color dark_green
team modify SilkWing color light_purple

#endregion
