#> tlc:abilities/activate/leafwings/fury_shift/used
#
# Activate LeafWing ability Fury Shift.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/tlc/functions/abilities/activate/leafwings/fury_shift/used.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/tlc/functions/abilities/activate/leafwings/fury_shift/used.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/used.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/tlc/functions/abilities/activate/leafwings/fury_shift/used.mcfunction", "color": "aqua"}}}]

    # Activate Sting Strike
tag @s add tlc.leafwings.toggle

    # Toggle Sting Strike mode
execute if entity @s[tag=tlc.leafwings.dart_mode, tag=tlc.leafwings.toggle] run function tlc:abilities/activate/leafwings/fury_shift/sling_mode
execute if entity @s[tag=tlc.leafwings.sling_mode, tag=tlc.leafwings.toggle] run function tlc:abilities/activate/leafwings/fury_shift/dart_mode

    # Revoke advancement
advancement revoke @s only tlc:abilities/leafwings/fury_shift/used

#endregion
