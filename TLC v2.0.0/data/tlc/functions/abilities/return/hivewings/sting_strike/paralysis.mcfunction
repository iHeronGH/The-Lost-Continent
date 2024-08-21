#> tlc:abilities/return/hivewings/sting_strike/paralysis
#
# Grant the player the HiveWing ability Sting Strike, Paralysis mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/paralysis.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/return/hivewings/sting_strike/paralysis.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/paralysis.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/return/hivewings/sting_strike/paralysis.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/paralysis.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/return/hivewings/sting_strike/paralysis.mcfunction", "color": "aqua"}}}]

    # Give Sting Strike
execute if score @s eoflib.set_slot.tertiary matches -106 run loot replace entity @s weapon.offhand loot tlc:commands/ability/hivewings/sting_strike
execute if score @s eoflib.set_slot.tertiary matches 0 run loot replace entity @s hotbar.0 loot tlc:commands/ability/hivewings/sting_strike/paralysis
execute if score @s eoflib.set_slot.tertiary matches 1 run loot replace entity @s hotbar.1 loot tlc:commands/ability/hivewings/sting_strike/paralysis
execute if score @s eoflib.set_slot.tertiary matches 2 run loot replace entity @s hotbar.2 loot tlc:commands/ability/hivewings/sting_strike/paralysis
execute if score @s eoflib.set_slot.tertiary matches 3 run loot replace entity @s hotbar.3 loot tlc:commands/ability/hivewings/sting_strike/paralysis
execute if score @s eoflib.set_slot.tertiary matches 4 run loot replace entity @s hotbar.4 loot tlc:commands/ability/hivewings/sting_strike/paralysis
execute if score @s eoflib.set_slot.tertiary matches 5 run loot replace entity @s hotbar.5 loot tlc:commands/ability/hivewings/sting_strike/paralysis
execute if score @s eoflib.set_slot.tertiary matches 6 run loot replace entity @s hotbar.6 loot tlc:commands/ability/hivewings/sting_strike/paralysis
execute if score @s eoflib.set_slot.tertiary matches 7 run loot replace entity @s hotbar.7 loot tlc:commands/ability/hivewings/sting_strike/paralysis
execute if score @s eoflib.set_slot.tertiary matches 8 run loot replace entity @s hotbar.8 loot tlc:commands/ability/hivewings/sting_strike/paralysis

    # Correct tags
tag @s add tlc.hivewings.paralysis_mode
tag @s remove tlc.hivewings.poison_mode

#endregion
