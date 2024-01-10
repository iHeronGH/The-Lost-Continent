#> tlc:load/del/teams
#
# Deletes The Lost Continent teams.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:teams.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/del/teams.mcfunction", "color": "aqua"}}}]

    # Remove teams
team remove HiveWing
team remove LeafWing
team remove SilkWing

#endregion
