#> tlc:load/gen/storages/ability_data/leafwings
#
# Generate LeafWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/leafwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:load/gen/storages/ability_data/leafwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/leafwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:load/gen/storages/ability_data/leafwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/leafwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:load/gen/storages/ability_data/leafwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config tlc.Abilities[].LeafWings set value {primary: [{}, {}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Fury Shift
            ### EOF data
data modify storage eoflib:config tlc.Abilities[].LeafWings.primary[0].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'primary', name: 'fury_shift', mode: 'dart', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 14, particle: "dust_color_transition 0.15 0.333 0.1 1 0 0 0", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "none"}}}
data modify storage eoflib:config tlc.Abilities[].LeafWings.primary[1].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'primary', name: 'fury_shift', mode: 'sling', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0.22d, range: 18, particle: "dust_color_transition 0.3 0.2 0.1 2 0 0 0", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "none"}}}

            ### MC data
data modify storage eoflib:config tlc.Abilities[].LeafWings.primary[0].mc_data set value {display: {Name: '{"text": "Fury Shift", "color": "dark_green", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "LeafWing", "color": "dark_green", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Poison 2", "color": "red", "italic": false}, {"text": " (3s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 200111, Unbreakable: true, HideFlags: 4}
data modify storage eoflib:config tlc.Abilities[].LeafWings.primary[1].mc_data set value {display: {Name: '{"text": "Fury Shift", "color": "dark_green", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "LeafWing", "color": "dark_green", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Slowness 3", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Weakness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '{"text": "• Generates a Sap Pool", "color": "yellow", "italic": false}', \
    '{"text": "when hitting a block", "color": "yellow", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 200100, Unbreakable: true, HideFlags: 4}

        ## Leafspeak
            ### EOF data
data modify storage eoflib:config tlc.Abilities[].LeafWings.secondary[0].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'secondary', name: 'leafspeak', cooldown: 24, duration: 0}}

            ### MC data
data modify storage eoflib:config tlc.Abilities[].LeafWings.secondary[0].mc_data set value {display: {Name: '{"text": "Leafspeak", "color": "green", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "LeafWing", "color": "dark_green", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"keybind": "key.use", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Resistance 1", "color": "green", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '{"text": "• Summons 3 Poison Points", "color": "green", "italic": false}', \
    '{"text": "around you", "color": "green", "italic": false}', \
    '[{"text": "• Slowness 2", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "24s", "color": "gray", "italic": false}' \
]}, CustomModelData: 200101, Unbreakable: true, HideFlags: 4}

        ## Venom Aura
            ### EOF data
data modify storage eoflib:config tlc.Abilities[].LeafWings.tertiary[0].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'tertiary', name: 'venom_aura', cooldown: 12, duration: 4}}

            ### MC data
data modify storage eoflib:config tlc.Abilities[].LeafWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Venom Aura", "color": "dark_green", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "LeafWing", "color": "dark_green", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "• Poison 2 in a short", "color": "red", "italic": false}', \
    '[{"text": "area around you", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "12s", "color": "gray", "italic": false}' \
]}, CustomModelData: 200110, Unbreakable: true, HideFlags: 4}

#endregion
