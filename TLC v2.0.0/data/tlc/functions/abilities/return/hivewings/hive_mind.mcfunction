#> tlc:abilities/return/hivewings/hive_mind
#
# Grant the player the HiveWing ability Hive Mind.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/hive_mind.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/tlc/functions/abilities/return/hivewings/hive_mind.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/hive_mind.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/tlc/functions/abilities/return/hivewings/hive_mind.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/hive_mind.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/tlc/functions/abilities/return/hivewings/hive_mind.mcfunction", "color": "aqua"}}}]

    # Give Hive Mind
execute if score @s eoflib.set_slot.secondary matches 0 run loot replace entity @s hotbar.0 loot tlc:commands/ability/hivewings/hive_mind
execute if score @s eoflib.set_slot.secondary matches 1 run loot replace entity @s hotbar.1 loot tlc:commands/ability/hivewings/hive_mind
execute if score @s eoflib.set_slot.secondary matches 2 run loot replace entity @s hotbar.2 loot tlc:commands/ability/hivewings/hive_mind
execute if score @s eoflib.set_slot.secondary matches 3 run loot replace entity @s hotbar.3 loot tlc:commands/ability/hivewings/hive_mind
execute if score @s eoflib.set_slot.secondary matches 4 run loot replace entity @s hotbar.4 loot tlc:commands/ability/hivewings/hive_mind
execute if score @s eoflib.set_slot.secondary matches 5 run loot replace entity @s hotbar.5 loot tlc:commands/ability/hivewings/hive_mind
execute if score @s eoflib.set_slot.secondary matches 6 run loot replace entity @s hotbar.6 loot tlc:commands/ability/hivewings/hive_mind
execute if score @s eoflib.set_slot.secondary matches 7 run loot replace entity @s hotbar.7 loot tlc:commands/ability/hivewings/hive_mind
execute if score @s eoflib.set_slot.secondary matches 8 run loot replace entity @s hotbar.8 loot tlc:commands/ability/hivewings/hive_mind

#endregionon
