#> tlc:passives/leafwings/photosynthesis/1/activate
#
# Activate Photosynthesis when successfully charged.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/leafwings/photosynthesis/1/activate.mcfunction", "color": "aqua"}}}]

    # Effect entities
effect give @s regeneration 2 1 true

    # Reset
        ## Correct Tags
tag @s remove tlc.passives.photosynthesis.init
tag @s add tlc.passives.photosynthesis.active

        ## Initiate Cooldown
schedule function tlc:passives/leafwings/photosynthesis/1/cooldown 1t replace

#endregion
