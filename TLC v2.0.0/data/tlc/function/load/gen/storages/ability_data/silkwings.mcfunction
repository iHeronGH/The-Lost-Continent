#> tlc:load/gen/storages/ability_data/silkwings
#
# Generate SilkWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/silkwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:load/gen/storages/ability_data/silkwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/silkwings.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:load/gen/storages/ability_data/silkwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:ability_data/silkwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:load/gen/storages/ability_data/silkwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config tlc.Abilities[].SilkWings set value { \
    primary: [{}, {}], \
    secondary: [{}], \
    tertiary: [{}] \
}

    # Generate ability data
        ## Silk Shot
data modify storage eoflib:config tlc.Abilities[].SilkWings.primary[0].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 201000, \
    "ability_data": { \
        "name": 'silk_shot', \
        "tribe": 'leafwings', \
        "archetype": 'primary', \
        "mode": 'snipe', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Silk Shot", "color": "gray", "italic": false}', \
            "tribe": '{"text": "SilkWings", "color": "light_purple", "italic": false}', \
            "archetype": '{"text": "Primary (Straight, 12)", "color": "gray", "italic": false}', \
            "activation": '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "10s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "    Snipe:", "color": "gray", "italic": false}', \
                '[{"text": "• Mining Fatigue 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Slowness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '{"text": "with Silk Spinner 1/5", "color": "gray"}', \
            ] \
        } \
    }, \
    "raycast_data": { \
        "arc_intensity": 0, \
        "range": 12, \
        "particle": 'dust{"color": [1.0, 1.0, 1.0], "scale": 1}', \
        "blocks": { \
            "passthrough": '#eoflib:passable/general', \
            "action": 'none', \
            "influences": 'none' \
        } \
    } \
}
data modify storage eoflib:config tlc.Abilities[].SilkWings.primary[1].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 201000, \
    "ability_data": { \
        "name": 'silk_shot', \
        "tribe": 'leafwings', \
        "archetype": 'primary', \
        "mode": 'burst', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Silk Shot", "color": "gray", "italic": false}', \
            "tribe": '{"text": "SilkWings", "color": "light_purple", "italic": false}', \
            "archetype": '{"text": "Primary (Arcing, 14 / 33°)", "color": "gray", "italic": false}', \
            "activation": '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "10s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "    Burst:", "color": "gray", "italic": false}', \
                '[{"text": "• Mining Fatigue 2", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Slowness 3", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '{"text": "with Silk Spinner 4/5", "color": "gray"}', \
            ] \
        } \
    }, \
    "raycast_data": { \
        "arc_intensity": 0.12d, \
        "range": 14, \
        "particle": 'dust{"color": [1.0, 1.0, 1.0], "scale": 1}', \
        "blocks": { \
            "passthrough": '#eoflib:passable/general', \
            "action": 'none', \
            "influences": 'none' \
        } \
    } \
}

        ## Metamorphosis
data modify storage eoflib:config tlc.Abilities[].SilkWings.secondary[0].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 201001, \
    "ability_data": { \
        "name": 'metamorphosis', \
        "tribe": 'leafwings', \
        "archetype": 'secondary', \
        "cooldown": 24, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Metamorphosis", "color": "white", "italic": false}', \
            "tribe": '{"text": "SilkWings", "color": "light_purple", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '{"keybind": "key.use", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "24s", "color": "gray", "italic": false}', \
            "effects": [ \
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
            ] \
        } \
    } \
}

        ## Webbing
data modify storage eoflib:config tlc.Abilities[].SilkWings.tertiary[0].eof_data set value { \
	"dlc": 'tlc', \
    "version": '2_0_0', \
    "model_id": 201010, \
    "ability_data": { \
        "name": 'webbing', \
        "tribe": 'leafwings', \
        "archetype": 'tertiary', \
        "cooldown": 20, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Webbing", "color": "dark_gray", "italic": false}', \
            "tribe": '{"text": "SilkWings", "color": "light_purple", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "20s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Entangled 1", "color": "red", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]' \
            ] \
        } \
    } \
}

#endregion
