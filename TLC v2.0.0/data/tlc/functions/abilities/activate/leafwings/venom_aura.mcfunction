#> tlc:abilities/activate/leafwings/venom_aura
#
# Activate RainWing ability Venom Aura.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/venom_aura.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/leafwings/venom_aura.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/venom_aura.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/leafwings/venom_aura.mcfunction", "color": "aqua"}}}]

    # Activate Venom Aura
        ## User effects

        ## Enemy effects

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.venom_aura = #tlc.abilities.venom_aura.cooldown tlc.abilities.venom_aura
function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only tlc:abilities/leafwings/venom_aura

#endregion
