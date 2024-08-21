#> tlc:loop/time/20t/correct_tags
#
# Resolve Pantalan tribe tags for all players.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=5..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:20t/correct_tags.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:loop/time/20t/correct_tags.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=5..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:20t/correct_tags.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:loop/time/20t/correct_tags.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=5..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:20t/correct_tags.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:loop/time/20t/correct_tags.mcfunction", "color": "aqua"}}}]

    # Remove tags
tag @a[tag=HiveWing, predicate=!tlc:tribes/hivewings] remove HiveWing
tag @a[tag=LeafWing, predicate=!tlc:tribes/leafwings] remove LeafWing
tag @a[tag=SilkWing, predicate=!tlc:tribes/silkwings] remove SilkWing

    # Apply tags
tag @a[tag=!HiveWing, predicate=tlc:tribes/hivewings] add HiveWing
tag @a[tag=!LeafWing, predicate=tlc:tribes/leafwings] add LeafWing
tag @a[tag=!SilkWing, predicate=tlc:tribes/silkwings] add SilkWing

#endregion
