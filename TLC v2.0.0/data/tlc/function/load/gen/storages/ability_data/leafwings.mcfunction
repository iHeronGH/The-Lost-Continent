#> tlc:load/gen/storages/ability_data/leafwings
#
# Generate LeafWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/leafwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:load/gen/storages/ability_data/leafwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/leafwings.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:load/gen/storages/ability_data/leafwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/leafwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:load/gen/storages/ability_data/leafwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config tlc.Abilities[].LeafWings set value { \
    primary: [{}, {}], \
    secondary: [{}], \
    tertiary: [{}] \
}

    # Generate ability data
        ## Fury Shift
data modify storage eoflib:config tlc.Abilities[].LeafWings.primary[0].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 200111, \
    "ability_data": { \
        "name": 'fury_shift', \
        "tribe": 'leafwings', \
        "archetype": 'primary', \
        "mode": 'dart', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Fury Shift", "color": "dark_green", "italic": false}', \
            "tribe": '{"text": "LeafWing", "color": "dark_green", "italic": false}', \
            "archetype": '{"text": "Primary (Straight, 14)", "color": "gray", "italic": false}', \
            "activation": '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "10s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "    Dart Mode:", "color": "green", "italic": false}', \
                '[{"text": "• Poison 2", "color": "red", "italic": false}, {"text": " (3s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    }, \
    "raycast_data": { \
        "arc_intensity": 0, \
        "range": 14, \
        "particle": 'dust_color_transition{from_color: [0.15, 0.333, 0.1], to_color: [0, 0, 0], scale: 1}', \
        "blocks": { \
            "passthrough": '#eoflib:passable/general', \
            "action": 'none', \
            "influences": 'none' \
        } \
    } \
}
data modify storage eoflib:config tlc.Abilities[].LeafWings.primary[1].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 200100, \
    "ability_data": { \
        "name": 'fury_shift', \
        "tribe": 'leafwings', \
        "archetype": 'primary', \
        "mode": 'sling', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Fury Shift", "color": "dark_green", "italic": false}', \
            "tribe": '{"text": "LeafWing", "color": "dark_green", "italic": false}', \
            "archetype": '{"text": "Primary (Arcing, 18 / 80°)", "color": "gray", "italic": false}', \
            "activation": '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "10s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "    Sling Mode:", "color": "#82480d", "italic": false}', \
                '[{"text": "• Slowness 3", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Weakness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '{"text": "• Generates a Sap Pool", "color": "yellow", "italic": false}', \
                '{"text": "when hitting a block", "color": "yellow", "italic": false}' \
            ] \
        } \
    }, \
    "raycast_data": { \
        "arc_intensity": 0.22d, \
        "range": 18, \
        "particle": "dust_color_transition{from_color: [0.3, 0.2, 0.1], to_color: [0, 0, 0], scale: 2}", \
        "blocks": { \
            "passthrough": "#eoflib:passable/general", \
            "action": "none", \
            "influences": "none" \
        } \
    } \
}

        ## Leafspeak
data modify storage eoflib:config tlc.Abilities[].LeafWings.secondary[0].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 200101, \
    "ability_data": { \
        "name": 'leafspeak', \
        "tribe": 'leafwings', \
        "archetype": 'secondary', \
        "cooldown": 24, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Leafspeak", "color": "green", "italic": false}', \
            "tribe": '{"text": "LeafWing", "color": "dark_green", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '{"keybind": "key.use", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "24s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Resistance 1", "color": "green", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
                '{"text": "• Summons 3 Poison Points", "color": "green", "italic": false}', \
                '{"text": "around you", "color": "green", "italic": false}', \
                '[{"text": "• Slowness 2", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]' \
            ] \
        } \
    } \
}

        ## Venom Aura
data modify storage eoflib:config tlc.Abilities[].LeafWings.tertiary[0].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 200110, \
    "ability_data": { \
        "name": 'venom_aura', \
        "tribe": 'leafwings', \
        "archetype": 'tertiary', \
        "cooldown": 12, \
        "duration": 4, \
        "format": { \
            "name": '{"text": "Venom Aura", "color": "dark_green", "italic": false}', \
            "tribe": '{"text": "LeafWing", "color": "dark_green", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "12s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "• Poison 2 in a short", "color": "red", "italic": false}', \
                '[{"text": "area around you", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

#endregion
