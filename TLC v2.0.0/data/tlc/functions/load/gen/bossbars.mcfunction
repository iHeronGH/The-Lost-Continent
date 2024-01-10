#> tlc:load/gen/bossbars
#
# Generates essential bossbars for The Lost Continent.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:bossbars.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/bossbars.mcfunction", "color": "aqua"}}}]

    # Generate bossbars
        ## Silk Spinner
#define bossbar tlc:passives/silk_spinner/0 Bossbar for Silk Spinner passive, 0/5 charges
bossbar add tlc:passives/silk_spinner/0 [{"text": "Silk Spinner: 0/5"}]

#define bossbar tlc:passives/silk_spinner/1 Bossbar for Silk Spinner passive, 1/5 charges
bossbar add tlc:passives/silk_spinner/1 [{"text": "Silk Spinner: 1/5"}]

#define bossbar tlc:passives/silk_spinner/2 Bossbar for Silk Spinner passive, 2/5 charges
bossbar add tlc:passives/silk_spinner/2 [{"text": "Silk Spinner: 2/5"}]

#define bossbar tlc:passives/silk_spinner/3 Bossbar for Silk Spinner passive, 3/5 charges
bossbar add tlc:passives/silk_spinner/3 [{"text": "Silk Spinner: 3/5"}]

#define bossbar tlc:passives/silk_spinner/4 Bossbar for Silk Spinner passive, 4/5 charges
bossbar add tlc:passives/silk_spinner/4 [{"text": "Silk Spinner: 4/5"}]

#define bossbar tlc:passives/silk_spinner/5 Bossbar for Silk Spinner passive, 5/5 charges
bossbar add tlc:passives/silk_spinner/5 [{"text": "Silk Spinner: 5/5"}]

    # Modify bossbars
        ## Silk Spinner
bossbar set tlc:passives/silk_spinner/0 value 0
bossbar set tlc:passives/silk_spinner/1 value 1
bossbar set tlc:passives/silk_spinner/2 value 2
bossbar set tlc:passives/silk_spinner/3 value 3
bossbar set tlc:passives/silk_spinner/4 value 4
bossbar set tlc:passives/silk_spinner/5 value 5

bossbar set tlc:passives/silk_spinner/0 max 5
bossbar set tlc:passives/silk_spinner/1 max 5
bossbar set tlc:passives/silk_spinner/2 max 5
bossbar set tlc:passives/silk_spinner/3 max 5
bossbar set tlc:passives/silk_spinner/4 max 5
bossbar set tlc:passives/silk_spinner/5 max 5

bossbar set tlc:passives/silk_spinner/0 color white
bossbar set tlc:passives/silk_spinner/1 color white
bossbar set tlc:passives/silk_spinner/2 color white
bossbar set tlc:passives/silk_spinner/3 color white
bossbar set tlc:passives/silk_spinner/4 color white
bossbar set tlc:passives/silk_spinner/5 color white

bossbar set tlc:passives/silk_spinner/0 visible true
bossbar set tlc:passives/silk_spinner/1 visible true
bossbar set tlc:passives/silk_spinner/2 visible true
bossbar set tlc:passives/silk_spinner/3 visible true
bossbar set tlc:passives/silk_spinner/4 visible true
bossbar set tlc:passives/silk_spinner/5 visible true

#endregion
