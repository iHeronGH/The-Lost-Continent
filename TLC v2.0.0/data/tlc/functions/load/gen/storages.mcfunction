#> tlc:load/gen/storages
#
# Generates abstract storage containers.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:gen/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/load/gen/storages.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:gen/storages.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/load/gen/storages.mcfunction", "color": "aqua"}}}]

    # Remove previous data
function tlc:load/del/storages

    # Create storage
#define storage eoflib:config Contains all storage-driven data for Elytras of Fire DLCs.

    # Regenerate containers
        ## Ability data
            ### HiveWings
data modify storage eoflib:config tlc.Abilities[].HiveWings[].primary set value [{eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'primary', name: 'acid_spray', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 11, particle: "dust_color_transition 0.4 0.333 0.1 1 0 0 0", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "null"}}}, mc_data: {display: {Name: '{"text": "Acid Spray", "color": "gold", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '[{"keybind": "key.sneak", "color": "gray"}, {"text": " + "}, {"keybind": "key.use"}]', '{"text": "Effects:", "color": "dark_gray"}', '[{"text": "• Wither 3", "color": "red"}, {"text": " (2s)", "color": "gray"}]', '[{"text": "• Nausea 1", "color": "red"}, {"text": " (8s)", "color": "gray"}]', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "10s", "color": "gray"}']}, CustomModelData: 200000, Recipes: ["eoflib:primary"]}}]
data modify storage eoflib:config tlc.Abilities[].HiveWings[].secondary set value [{eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'secondary', name: 'hive_mind', cooldown: 24, duration: 0}}, mc_data: {display: {Name: '{"text": "Hive Mind", "color": "yellow", "italic": false}', Lore: []}, CustomModelData: 200001, Recipes: ["eoflib:secondary"]}}]
data modify storage eoflib:config tlc.Abilities[].HiveWings[].tertiary set value [{eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'tertiary', name: 'sting_strike', mode: 'poison', cooldown: 40, duration: 0}}, mc_data: {display: {Name: '[{"text": "Sting Strike: ", "color": "white", "italic": false}, {"text": "Poison Strike", "color": "dark_green", "italic": false}]', Lore: []}, CustomModelData: 200010, Recipes: ["eoflib:tertiary"]}}, {eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'tertiary', name: 'sting_strike', mode: 'paralysis', cooldown: 0}}, mc_data: {display: {Name: '[{"text": "Sting Strike: ", "color": "white", "italic": false}, {"text": "Paralysis Strike", "color": "yellow", "italic": false}]', Lore: []}, CustomModelData: 200011, Recipes: ["eoflib:tertiary"]}}]
            ### LeafWings
data modify storage eoflib:config tlc.Abilities[].LeafWings[].primary set value [{eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'primary', name: 'fury_shift', mode: 'dart', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 14, particle: "dust_color_transition 0.15 0.333 0.1 1 0 0 0", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "null"}}}, mc_data: {display: {Name: '[{"text": "Fury Shift: ", "color": "dark_green", "italic": false}, {"text": "Poison Dart", "color": "green", "italic": false}]', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '[{"keybind": "key.sneak", "color": "gray"}, {"text": " + "}, {"keybind": "key.use"}]', '{"text": "Effects:", "color": "dark_gray"}', '[{"text": "• Poison 2", "color": "red"}, {"text": " (3s)", "color": "gray"}]', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "10s", "color": "gray"}']}, CustomModelData: 200111, Recipes: ["eoflib:primary"]}}, {eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'primary', name: 'fury_shift', mode: 'sling', cooldown: 10}, raycast_data: {arc_intensity: 0.22, range: 18, particle: "dust_color_transition 0.3 0.2 0.1 2 0 0 0", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "null"}}}, mc_data: {display: {Name: '[{"text": "Fury Shift: ", "color": "dark_green", "italic": false}, {"text": "Sap Sling", "color": "#82480d", "italic": false}]', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '[{"keybind": "key.sneak", "color": "gray"}, {"text": " + "}, {"keybind": "key.use"}]', '{"text": "Effects:", "color": "dark_gray"}', '[{"text": "• Slowness 3", "color": "red"}, {"text": " (4s)", "color": "gray"}]', '[{"text": "• Weakness 1", "color": "red"}, {"text": " (4s)", "color": "gray"}]', '{"text": "• Generates a Sap Pool", "color": "gray"}', '{"text": "when it hits a block", "color": "gray"}', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "10s", "color": "gray"}']}, CustomModelData: 200100, Recipes: ["eoflib:primary"]}}]
data modify storage eoflib:config tlc.Abilities[].LeafWings[].secondary set value [{eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'secondary', name: 'leafspeak', cooldown: 24, duration: 0}}, mc_data: {display: {Name: '{"text": "Leafspeak", "color": "green", "italic": false}', Lore: []}, CustomModelData: 200101, Recipes: ["eoflib:secondary"]}}]
data modify storage eoflib:config tlc.Abilities[].LeafWings[].tertiary set value [{eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'tertiary', name: 'venom_aura', cooldown: 12, duration: 4}}, mc_data: {display: {Name: '{"text": "Venom Aura", "color": "dark_green", "italic": false}', Lore: []}, CustomModelData: 200110, Recipes: ["eoflib:tertiary"]}}]
            ### SilkWings
data modify storage eoflib:config tlc.Abilities[].SilkWings[].primary set value [{eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'primary', name: 'silk_shot', mode: 'snipe', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 12, particle: "dust 1 1 1 1", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "null"}}}, mc_data: {display: {Name: '{"text": "Silk Shot", "color": "gray", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '[{"keybind": "key.sneak", "color": "gray"}, {"text": " + "}, {"keybind": "key.use"}]', '{"text": "Effects:", "color": "dark_gray"}', '[{"text": "• Mining Fatigue 1", "color": "red"}, {"text": " (4s)", "color": "gray"}]', '[{"text": "• Slowness 1", "color": "red"}, {"text": " (4s)", "color": "gray"}]', '{"text": "with Silk Spinner 1/5", "color": "gray"}', '[{"text": "• Slowness 1", "color": "red"}, {"text": " (5s)", "color": "gray"}]', '{"text": "with Silk Spinner 2/5", "color": "gray"}', '[{"text": "• Slowness 2", "color": "red"}, {"text": " (5s)", "color": "gray"}]', '{"text": "with Silk Spinner 3/5", "color": "gray"}', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "10s", "color": "gray"}']}, CustomModelData: 201000, Recipes: ["eoflib:primary"]}}, {eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'primary', name: 'silk_shot', mode: 'burst', cooldown: 10}, raycast_data: {arc_intensity: 0.12, range: 14, particle: "dust 1 1 1 1", blocks: {passthrough: "#eoflib:passable/general", action: "none", influences: "null"}}}, mc_data: {display: {Name: '{"text": "Silk Shot", "color": "gray", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '[{"keybind": "key.sneak", "color": "gray"}, {"text": " + "}, {"keybind": "key.use"}]', '{"text": "Effects:", "color": "dark_gray"}', '[{"text": "• Mining Fatigue 2", "color": "red"}, {"text": " (4s)", "color": "gray"}]', '[{"text": "• Slowness 3", "color": "red"}, {"text": " (4s)", "color": "gray"}]', '{"text": "with Silk Spinner 4/5", "color": "gray"}', '[{"text": "• Slowness 3", "color": "red"}, {"text": " (5s)", "color": "gray"}]', '{"text": "with Silk Spinner 5/5", "color": "gray"}', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "10s", "color": "gray"}']}, CustomModelData: 201000, Recipes: ["eoflib:primary"]}}]
data modify storage eoflib:config tlc.Abilities[].SilkWings[].secondary set value [{eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'secondary', name: 'sense', cooldown: 0, duration: 0}}, mc_data: {display: {Name: '{"text": "Sense", "color": "white", "italic": false}', Lore: []}, CustomModelData: 201001, Recipes: ["eoflib:secondary"]}}]
data modify storage eoflib:config tlc.Abilities[].SilkWings[].tertiary set value [{eof_data: {dlc: 'tlc', version: '2_0_0', ability_data: {type: 'tertiary', name: 'webbing', cooldown: 20, duration: 0}}, mc_data: {display: {Name: '{"text": "Webbing", "color": "dark_gray", "italic": false}', Lore: []}, CustomModelData: 201010, Recipes: ["eoflib:tertiary"]}}]

#endregion
