#> tlc:abilities/activate/leafwings/venom_aura/loop
#
# Run Venom Aura.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:venom_aura/loop.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/activate/leafwings/venom_aura/loop.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:venom_aura/loop.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/activate/leafwings/venom_aura/loop.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:venom_aura/loop.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/activate/leafwings/venom_aura/loop.mcfunction", "color": "aqua"}}}]

    # Activate Venom Aura
        ## User effects
execute at @a[tag=tlc.abilities.venom_aura] run particle dust_color_transition 0.453 0.941 0.492 1 0.098 0.16 0.102 ~ ~0.5 ~ 0.25 0.4 0.25 0.333 8

        ## Enemy effects
execute at @a[tag=tlc.abilities.venom_aura] run effect give @e[predicate=eoflib:entities/affected, predicate=!tlc:tribes/leafwings, nbt=!{active_effects: [{id: "minecraft:poison"}]}, distance=..4] poison 4 1 true

    # Loop
execute if entity @a[tag=tlc.abilities.venom_aura, predicate=tlc:tribes/leafwings, predicate=tlc:abilities/cooldowns/leafwings/venom_aura/active] run schedule function tlc:abilities/activate/leafwings/venom_aura/loop 1t

#endregion
