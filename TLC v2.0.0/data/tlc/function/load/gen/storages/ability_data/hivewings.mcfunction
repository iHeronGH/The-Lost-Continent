#> tlc:load/gen/storages/ability_data/hivewings
#
# Generate HiveWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/hivewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:load/gen/storages/ability_data/hivewings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/hivewings.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:load/gen/storages/ability_data/hivewings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/hivewings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:load/gen/storages/ability_data/hivewings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config tlc.Abilities[].HiveWings set value { \
    primary: [{}], \
    secondary: [{}], \
    tertiary: [{}, {}] \
}

    # Generate ability data
        ## Acid Spray
data modify storage eoflib:config tlc.Abilities[].HiveWings.primary[0].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 200000, \
    "ability_data": { \
        "name": 'acid_spray', \
        "tribe": 'hivewings', \
        "archetype": 'primary', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Acid Spray", "color": "gold", "italic": false}', \
            "tribe": '{"text": "HiveWing", "color": "gold", "italic": false}', \
            "archetype": '{"text": "Primary (Straight, 11)", "color": "gray", "italic": false}', \
            "activation": '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "10s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Wither 3", "color": "red", "italic": false}, {"text": " (2s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Nausea 1", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]' \
            ] \
        } \
    }, \
    "raycast_data": { \
        "arc_intensity": 0, \
        "range": 11, \
        "particle": 'dust_color_transition{from_color: [0.4, 0.333, 0.1], to_color: [0, 0, 0], scale: 1}', \
        "blocks": { \
            "passthrough": '#eoflib:passable/general', \
            "action": 'none', \
            "influences": 'none' \
        } \
    } \
}

        ## Hive Mind
data modify storage eoflib:config tlc.Abilities[].HiveWings.secondary[0].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 200001, \
    "ability_data": { \
        "name": 'hive_mind', \
        "tribe": 'hivewings', \
        "archetype": 'secondary', \
        "cooldown": 24, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Hive Mind", "color": "yellow", "italic": false}', \
            "tribe": '{"text": "HiveWing", "color": "gold", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '{"keybind": "key.use", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "24s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Strength 2", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Speed 2", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
                '{"text": "with Synchrosocial 1", "color": "gray", "italic": true}', \
                '[{"text": "• Speed 3", "color": "green", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
                '{"text": "with Synchrosocial 2", "color": "gray", "italic": true}', \
                '[{"text": "• Strength 3", "color": "yellow", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
                '{"text": "with Synchrosocial 3", "color": "gray", "italic": true}', \
            ] \
        } \
    } \
}

        ## Sting Strike
data modify storage eoflib:config tlc.Abilities[].HiveWings.tertiary[0].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 200010, \
    "ability_data": { \
        "name": 'sting_strike', \
        "tribe": 'hivewings', \
        "archetype": 'tertiary', \
        "mode": 'poison', \
        "cooldown": 40, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Sting Strike", "color": "white", "italic": false}', \
            "tribe": '{"text": "HiveWing", "color": "gold", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "40s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "    Poison Mode:", "color": "dark_green", "italic": false}', \
                '[{"text": "• Weakness 2", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Poison 4", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]' \
            ] \
        } \
    } \
}
data modify storage eoflib:config tlc.Abilities[].HiveWings.tertiary[1].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 200011, \
    "ability_data": { \
        "name": 'sting_strike', \
        "tribe": 'hivewings', \
        "archetype": 'tertiary', \
        "mode": 'paralysis', \
        "cooldown": 40, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Sting Strike", "color": "white", "italic": false}', \
            "tribe": '{"text": "HiveWing", "color": "gold", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "40s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "    Paralysis Mode:", "color": "yellow", "italic": false}', \
                '[{"text": "• Weakness 2", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Slowness 5", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

#endregion
