#> tlc:abilities/block_effects/acid_spray
#
# Activate Acid Spray effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:block_effects/acid_spray.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/block_effects/acid_spray.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:block_effects/acid_spray.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/block_effects/acid_spray.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:block_effects/acid_spray.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/block_effects/acid_spray.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute facing ^ ^ ^-1 rotated ~ 75 run particle squid_ink ~ ~ ~ ^-300000 ^ ^1000000 0.0000001 0
execute facing ^ ^ ^-1 rotated ~ 65 run particle squid_ink ~ ~ ~ ^-80000 ^ ^1000000 0.00000025 0
execute facing ^ ^ ^-1 rotated ~ 60 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000004 0
execute facing ^ ^ ^-1 rotated ~ 65 run particle squid_ink ~ ~ ~ ^80000 ^ ^1000000 0.00000025 0
execute facing ^ ^ ^-1 rotated ~ 75 run particle squid_ink ~ ~ ~ ^300000 ^ ^1000000 0.0000001 0

#endregion
