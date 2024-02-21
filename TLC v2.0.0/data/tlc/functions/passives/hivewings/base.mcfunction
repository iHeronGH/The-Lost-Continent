#> tlc:passives/hivewings/base
#
# Grants base HiveWing effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/hivewings/base.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/base.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/hivewings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings] strength 1 1 true

    # Check for Synchrosocial effects
execute as @a[predicate=tlc:tribes/hivewings] at @s store result score @s tlc.passives.synchrosocial run execute if entity @a[predicate=tlc:tribes/hivewings, distance=0.1..8]
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/1] run function tlc:passives/hivewings/synchrosocial/1
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/2] run function tlc:passives/hivewings/synchrosocial/2
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/3] run function tlc:passives/hivewings/synchrosocial/3

#endregion
