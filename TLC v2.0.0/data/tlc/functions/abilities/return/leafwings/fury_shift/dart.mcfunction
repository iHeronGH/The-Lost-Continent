#> tlc:abilities/return/leafwings/fury_shift/dart
#
# Grant the player the LeafWing ability Fury Shift, Dart mode.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:dart.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/leafwings/fury_shift/dart.mcfunction", "color": "aqua"}}}]

    # Give Fury Shift
loot replace entity @s hotbar.6 loot tlc:commands/ability/leafwings/fury_shift/dart

    # Correct tags
tag @s add tlc.leafwings.dart_mode
tag @s remove tlc.leafwings.sling_mode

#endregion
