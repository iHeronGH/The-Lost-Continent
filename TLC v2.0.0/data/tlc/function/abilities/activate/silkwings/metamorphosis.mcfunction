#> tlc:abilities/activate/silkwings/metamorphosis
#
# Activate SilkWing ability Metamorphosis.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/metamorphosis.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/activate/silkwings/metamorphosis.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/metamorphosis.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/activate/silkwings/metamorphosis.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/metamorphosis.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/activate/silkwings/metamorphosis.mcfunction", "color": "aqua"}}}]

    # Activate Metamorphosis
        ## User effects
effect give @s instant_health 1 0 true
effect give @s speed 6 2 true
execute unless entity @s[predicate=!tlc:passives/silk_spinner/3_range, predicate=!tlc:passives/silk_spinner/4_range, predicate=!tlc:passives/silk_spinner/5] run effect give @s regeneration 6 1 true
execute unless entity @s[predicate=!tlc:passives/silk_spinner/4_range, predicate=!tlc:passives/silk_spinner/5] run effect give @s resistance 6 0 true
execute if entity @s[predicate=tlc:passives/silk_spinner/5] run effect give @s strength 6 2 true

            ### Decrement Silk Spinner
scoreboard players set @s tlc.passives.silk_spinner 0

        ## Enemy effects
execute unless entity @s[predicate=!tlc:passives/silk_spinner/3_range, predicate=!tlc:passives/silk_spinner/4_range, predicate=!tlc:passives/silk_spinner/5] run effect give @e[predicate=eoflib:entities/affected, distance=..8] glowing 6 0 true
execute unless entity @s[predicate=!tlc:passives/silk_spinner/4_range, predicate=!tlc:passives/silk_spinner/5] run effect give @e[predicate=eoflib:entities/affected, distance=..10] glowing 8 0 true
execute if entity @s[predicate=tlc:passives/silk_spinner/5] run effect give @e[predicate=eoflib:entities/affected, distance=..15] glowing 12 0 true

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.metamorphosis = #cooldown tlc.abilities.metamorphosis
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

#endregion
