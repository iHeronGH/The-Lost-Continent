#> tlc:abilities/block_effects/acid_spray
#
# Activate Acid Spray effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:acid_spray.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/block_effects/acid_spray.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute facing ^ ^ ^-1 rotated ~ 75 run particle squid_ink ~ ~ ~ ^-300000 ^ ^1000000 0.0000001 0
execute facing ^ ^ ^-1 rotated ~ 65 run particle squid_ink ~ ~ ~ ^-80000 ^ ^1000000 0.00000025 0
execute facing ^ ^ ^-1 rotated ~ 60 run particle squid_ink ~ ~ ~ ^ ^ ^1000000 0.0000004 0
execute facing ^ ^ ^-1 rotated ~ 65 run particle squid_ink ~ ~ ~ ^80000 ^ ^1000000 0.00000025 0
execute facing ^ ^ ^-1 rotated ~ 75 run particle squid_ink ~ ~ ~ ^300000 ^ ^1000000 0.0000001 0

#endregion
