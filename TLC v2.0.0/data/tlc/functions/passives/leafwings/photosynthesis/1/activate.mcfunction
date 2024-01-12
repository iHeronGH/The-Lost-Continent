#> tlc:passives/leafwings/photosynthesis/1/activate
#
# Activate Photosynthesis when successfully charged.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/leafwings/photosynthesis/1/activate.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/activate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/leafwings/photosynthesis/1/activate.mcfunction", "color": "aqua"}}}]

    # Effect entities
effect give @s regeneration 2 1 true

    # Reset
        ## Correct Tags
tag @s remove tlc.passives.photosynthesis.init
tag @s add tlc.passives.photosynthesis.active

        ## Initiate Cooldown
schedule function tlc:passives/leafwings/photosynthesis/1/cooldown 1t replace

#endregion
