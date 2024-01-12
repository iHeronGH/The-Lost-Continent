#> tlc:abilities/return/leafwings/fury_shift/dart
#
# Grant the player the LeafWing ability Fury Shift, Dart mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/dart.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/leafwings/fury_shift/dart.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/dart.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/leafwings/fury_shift/dart.mcfunction", "color": "aqua"}}}]

    # Give Fury Shift
loot replace entity @s hotbar.6 loot tlc:commands/ability/leafwings/fury_shift/dart

    # Correct tags
tag @s add tlc.leafwings.dart_mode
tag @s remove tlc.leafwings.sling_mode

#endregion
