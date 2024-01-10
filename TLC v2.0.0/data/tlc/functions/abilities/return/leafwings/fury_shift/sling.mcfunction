#> tlc:abilities/return/leafwings/fury_shift/sling
#
# Grant the player the LeafWing ability Fury Shift, Sling mode.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:sling.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/leafwings/fury_shift/sling.mcfunction", "color": "aqua"}}}]

    # Give Fury Shift
loot replace entity @s hotbar.6 loot tlc:commands/ability/leafwings/fury_shift/sling

    # Correct tags
tag @s add tlc.leafwings.sling_mode
tag @s remove tlc.leafwings.dart_mode

#endregion
