#> tlc:abilities/return/hivewings/all
#
# Grant the player all Hivewing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/hivewings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/hivewings/all.mcfunction", "color": "aqua"}}}]

    # Grant Hivewing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function tlc:abilities/return/hivewings/acid_spray
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function tlc:abilities/return/hivewings/hive_mind
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] unless entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/paralysis
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] if entity @s[tag=tlc.hivewings.poison_mode] run function tlc:abilities/return/hivewings/sting_strike/poison

#endregion
