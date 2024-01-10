#> tlc:abilities/activate/leafwings/fury_shift/used
#
# Activate LeafWing ability Fury Shift.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/leafwings/fury_shift/used.mcfunction", "color": "aqua"}}}]

    # Activate Sting Strike
tag @s add tlc.leafwings.toggle

    # Toggle Sting Strike mode
execute if entity @s[tag=tlc.leafwings.dart_mode, tag=tlc.leafwings.toggle] run function tlc:abilities/activate/leafwings/fury_shift/sling_mode
execute if entity @s[tag=tlc.leafwings.sling_mode, tag=tlc.leafwings.toggle] run function tlc:abilities/activate/leafwings/fury_shift/dart_mode

    # Revoke advancement
advancement revoke @s only tlc:abilities/leafwings/fury_shift/used

#endregion
