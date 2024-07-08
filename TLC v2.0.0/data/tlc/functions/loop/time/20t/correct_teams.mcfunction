#> tlc:loop/time/20t/correct_teams
#
# Resolve Pantalan tribe teams for all players.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:20t/correct_teams.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/loop/time/20t/correct_teams.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:20t/correct_teams.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/loop/time/20t/correct_teams.mcfunction", "color": "aqua"}}}]

    # Join teams
team join HiveWing @a[tag=HiveWing, tag=!eoflib.admin]
team join LeafWing @a[tag=LeafWing, tag=!eoflib.admin]
team join SilkWing @a[tag=SilkWing, tag=!eoflib.admin]

#endregion
