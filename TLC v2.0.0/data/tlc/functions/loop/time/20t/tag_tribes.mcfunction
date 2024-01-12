#> tlc:loop/time/20t/tag_tribes
#
# Resolve Pantalan tribe tags for all players.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:20t/tag_tribes.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/loop/time/20t/tag_tribes.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:20t/tag_tribes.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/loop/time/20t/tag_tribes.mcfunction", "color": "aqua"}}}]

    # Remove tags
execute if entity @a[predicate=!tlc:tribes/hivewings] run tag @a[predicate=!tlc:tribes/hivewings] remove HiveWing
execute if entity @a[predicate=!tlc:tribes/leafwings] run tag @a[predicate=!tlc:tribes/leafwings] remove LeafWing
execute if entity @a[predicate=!tlc:tribes/silkwings] run tag @a[predicate=!tlc:tribes/silkwings] remove SilkWing

    # Apply tags
execute if entity @a[predicate=tlc:tribes/hivewings] run tag @a[predicate=tlc:tribes/hivewings] add HiveWing
execute if entity @a[predicate=tlc:tribes/leafwings] run tag @a[predicate=tlc:tribes/leafwings] add LeafWing
execute if entity @a[predicate=tlc:tribes/silkwings] run tag @a[predicate=tlc:tribes/silkwings] add SilkWing

#endregion
