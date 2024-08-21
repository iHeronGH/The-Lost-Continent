#> tlc:load/gen/storages/ability_data/silkwings
#
# Generate SilkWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/silkwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:load/gen/storages/ability_data/silkwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/silkwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:load/gen/storages/ability_data/silkwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/silkwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:load/gen/storages/ability_data/silkwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config tlc.Abilities[].SilkWings set value {primary: [{}, {}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Silk Shot
            ### EOF data
data modify storage eoflib:config tlc.Abilities[].SilkWings.primary[0].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'primary', name: 'silk_shot', mode: 'snipe', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 12, particle: "dust 1 1 1 1", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "none"}}}
data modify storage eoflib:config tlc.Abilities[].SilkWings.primary[1].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'primary', name: 'silk_shot', mode: 'burst', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0.12d, range: 14, particle: "dust 1 1 1 1", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "none"}}}

            ### MC data
data modify storage eoflib:config tlc.Abilities[].SilkWings.primary[0].mc_data set value {display: {Name: '{"text": "Silk Shot", "color": "gray", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SilkWings", "color": "light_purple", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Mining Fatigue 2", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Slowness 3", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '{"text": "with Silk Spinner 4/5", "color": "gray"}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 201000, Unbreakable: true, HideFlags: 4}
data modify storage eoflib:config tlc.Abilities[].SilkWings.primary[1].mc_data set value {display: {Name: '{"text": "Silk Shot", "color": "gray", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SilkWings", "color": "light_purple", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Mining Fatigue 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Slowness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '{"text": "with Silk Spinner 1/5", "color": "gray"}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 201000, Unbreakable: true, HideFlags: 4}

        ## Metamorphosis
            ### EOF data
data modify storage eoflib:config tlc.Abilities[].SilkWings.secondary[0].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'secondary', name: 'metamorphosis', cooldown: 24, duration: 0}}

            ### MC data
data modify storage eoflib:config tlc.Abilities[].SilkWings.secondary[0].mc_data set value {display: {Name: '{"text": "Metamorphosis", "color": "white", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SilkWings", "color": "light_purple", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"keybind": "key.use", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "• Instant Health 1", "color": "green", "italic": false}', \
    '[{"text": "• Speed 3", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Glowing", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '{"text": "with Silk Spinner 3/5", "color": "gray"}', \
    '[{"text": "• Regeneration 2", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '{"text": "with Silk Spinner 3/5", "color": "gray"}', \
    '[{"text": "• Resistance 1", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '{"text": "with Silk Spinner 4/5", "color": "gray"}', \
    '[{"text": "• Strength 3", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '{"text": "with Silk Spinner 5/5", "color": "gray"}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "24s", "color": "gray", "italic": false}'\
]}, CustomModelData: 201001, Unbreakable: true, HideFlags: 4}

        ## Webbing
            ### EOF data
data modify storage eoflib:config tlc.Abilities[].SilkWings.tertiary[0].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'tertiary', name: 'webbing', cooldown: 20, duration: 0}}

            ### MC data
data modify storage eoflib:config tlc.Abilities[].SilkWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Webbing", "color": "dark_gray", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SilkWings", "color": "light_purple", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Entangled 1", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "20s", "color": "gray", "italic": false}'\
]}, CustomModelData: 201010, Unbreakable: true, HideFlags: 4}

#endregion
