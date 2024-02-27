#> tlc:load/del/bossbars
#
# Delete bossbars from The Lost Continent.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:del/bossbars.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/load/del/bossbars.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:del/bossbars.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/load/del/bossbars.mcfunction", "color": "aqua"}}}]

    # Remove bossbars
bossbar remove tlc:passives/silk_spinner/0
bossbar remove tlc:passives/silk_spinner/1
bossbar remove tlc:passives/silk_spinner/2
bossbar remove tlc:passives/silk_spinner/3
bossbar remove tlc:passives/silk_spinner/4
bossbar remove tlc:passives/silk_spinner/5

#endregion
