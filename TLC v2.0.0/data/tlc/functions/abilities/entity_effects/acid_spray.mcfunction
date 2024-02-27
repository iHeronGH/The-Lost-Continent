#> tlc:abilities/entity_effects/acid_spray
#
# Activate Acid Spray effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:entity_effects/acid_spray.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/entity_effects/acid_spray.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:entity_effects/acid_spray.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/entity_effects/acid_spray.mcfunction", "color": "aqua"}}}]

    # Enemy effects
effect give @s wither 2 2 true
effect give @s nausea 8 0 true

#endregion
