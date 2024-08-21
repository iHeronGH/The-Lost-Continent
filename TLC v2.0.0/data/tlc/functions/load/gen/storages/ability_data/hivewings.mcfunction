#>  tlc:load/gen/storages/ability_data/hivewings
#
# Generate HiveWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/hivewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:load/gen/storages/ability_data/hivewings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/hivewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:load/gen/storages/ability_data/hivewings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/hivewings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:load/gen/storages/ability_data/hivewings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config tlc.Abilities[].HiveWings set value {primary: [{}], secondary: [{}], tertiary: [{}, {}]}

    # Generate ability data
        ## Acid Spray
            ### EOF data
data modify storage eoflib:config tlc.Abilities[].HiveWings.primary[0].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'primary', name: 'acid_spray', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 11, particle: "dust_color_transition 0.4 0.333 0.1 1 0 0 0", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "none"}}}

            ### MC data
data modify storage eoflib:config tlc.Abilities[].HiveWings.primary[0].mc_data set value {display: {Name: '{"text": "Acid Spray", "color": "gold", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "HiveWing", "color": "gold", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Wither 3", "color": "red", "italic": false}, {"text": " (2s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Nausea 1", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 200000, Unbreakable: true, HideFlags: 4}

        ## Hive Mind
            ### EOF data
data modify storage eoflib:config tlc.Abilities[].HiveWings.secondary[0].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'secondary', name: 'hive_mind', cooldown: 24, duration: 0}}

            ### MC data
data modify storage eoflib:config tlc.Abilities[].HiveWings.secondary[0].mc_data set value {display: {Name: '{"text": "Hive Mind", "color": "yellow", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "HiveWing", "color": "gold", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"keybind": "key.use", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Strength 2", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Speed 2", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '{"text": "with Synchrosocial 1", "color": "gray", "italic": true}', \
    '[{"text": "• Speed 3", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '{"text": "with Synchrosocial 2", "color": "gray", "italic": true}', \
    '[{"text": "• Strength 3", "color": "yellow", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '{"text": "with Synchrosocial 3", "color": "gray", "italic": true}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "24s", "color": "gray", "italic": false}' \
]}, CustomModelData: 200001, Unbreakable: true, HideFlags: 4}

        ## Sting Strike
            ### EOF data
data modify storage eoflib:config tlc.Abilities[].HiveWings.tertiary[0].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'tertiary', name: 'sting_strike', mode: 'poison', cooldown: 40, duration: 0}}
data modify storage eoflib:config tlc.Abilities[].HiveWings.tertiary[1].eof_data set value {dlc: 'tlc', version: '2_0_0', ability_data: {archetype: 'tertiary', name: 'sting_strike', mode: 'paralysis', cooldown: 40, duration: 0}}

            ### MC data
data modify storage eoflib:config tlc.Abilities[].HiveWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Sting Strike", "color": "white", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "HiveWing", "color": "gold", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "    Poison Mode:", "color": "dark_green", "italic": false}', \
    '[{"text": "• Weakness 2", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Poison 4", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "40s", "color": "gray", "italic": false}' \
]}, CustomModelData: 200010, Unbreakable: true, HideFlags: 4}
data modify storage eoflib:config tlc.Abilities[].HiveWings.tertiary[1].mc_data set value {display: {Name: '{"text": "Sting Strike", "color": "white", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "HiveWing", "color": "gold", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "    Paralysis Mode:", "color": "yellow", "italic": false}', \
    '[{"text": "• Weakness 2", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Slowness 5", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "40s", "color": "gray", "italic": false}' \
]}, CustomModelData: 200011, Unbreakable: true, HideFlags: 4}

#endregion
