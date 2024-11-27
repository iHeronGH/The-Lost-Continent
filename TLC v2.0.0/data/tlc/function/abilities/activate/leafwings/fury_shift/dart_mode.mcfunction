#> tlc:abilities/activate/leafwings/fury_shift/dart_mode
#
# Switch LeafWing ability Sting Strike to Dart Mode on use.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/dart_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/activate/leafwings/fury_shift/dart_mode.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/dart_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/activate/leafwings/fury_shift/dart_mode.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/dart_mode.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/activate/leafwings/fury_shift/dart_mode.mcfunction", "color": "aqua"}}}]

    # Announce toggle
title @s actionbar [{"text": "Switched to Fury Shift: ", "color": "dark_green"}, {"text": "Venom Dart", "color": "green"}, {"text": "!", "color": "dark_green"}]

    # Switch to Dart Mode
function tlc:abilities/return/leafwings/fury_shift/dart

    # Remove toggle tag
tag @s remove tlc.leafwings.toggle

#endregion
