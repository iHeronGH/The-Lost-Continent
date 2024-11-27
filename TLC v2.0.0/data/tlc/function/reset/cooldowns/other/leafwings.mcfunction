#> tlc:reset/cooldowns/other/leafwings
#
# Reset all LeafWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:other/leafwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:reset/cooldowns/other/leafwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:other/leafwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:reset/cooldowns/other/leafwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:other/leafwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:reset/cooldowns/other/leafwings.mcfunction", "color": "aqua"}}}]

    # Reset LeafWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!tlc:tribes/leafwings] tlc.abilities.fury_shift 0
scoreboard players set @a[predicate=!tlc:tribes/leafwings] tlc.abilities.leafspeak 0
scoreboard players set @a[predicate=!tlc:tribes/leafwings] tlc.abilities.venom_aura.cooldown 0
scoreboard players set @a[predicate=!tlc:tribes/leafwings] tlc.abilities.venom_aura.duration 0

        ## Reset passives
scoreboard players set @a[predicate=!tlc:tribes/leafwings] tlc.passives.photosynthesis 0

#endregion
