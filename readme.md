# The Lost Continent

## Welcome!

The Lost Continent is a Minecraft datapack directly inspired by the world of Wings of Fire! Inspired by Pantala, it adds in three new tribes, along with three new abilities for each.

This DLC depends on [Elytras of Fire Lib](https://github.com/iHeronGH/Elytras-of-Fire-Lib) and requires its [installation](#installation-and-uninstallation) in order to be used correctly.

---

## Table of Contents

- [Installation and Uninstallation](#installation-and-uninstallation)
- [Features](#features)
  - [Tribes](#tribes)
    - [HiveWings](#hivewings)
    - [LeafWings](#leafwings)
    - [SilkWings](#silkwings)
  - [Passives](#passives)
    - [Hive Mind](#hive-mind)
    - [Silk Spinner](#silk-spinner)
    - [Photosynthesis](#true-blessing)
  - [Abilities](#abilities)
  - [Custom Effects](#custom-effects)
- [Planned Features](#planned-features)
  - [Abilities](#abilities-1)
- [Other Qualities](#other-qualities)
  - [IMP Compliance](#imp-compliance)

---

## Installation and Uninstallation

[Back to top](#)

Installing The Lost Continent is relatively simple:

1. Download the datapack using the Releases tab on the right (this will be populated when the datapack is in a releasable state, which it is not as of writing this.)
2. Open your world folder and place the downloaded folder into the "datapacks" folder. **Make sure you have [Elytras of Fire Lib](https://github.com/iHeronGH/Elytras-of-Fire-Lib/releases) in this same folder, or else this datapack will not work!**
3. Use **`/reload`** in-game to refresh your world. If you have installed it correctly, you will be met with a successful installation message. Thank you for using The Lost Continent! I hope you enjoy it.

And uninstalling The Lost Continent is even simpler:

1. Run the command **`/function eof:uninstall`**. This will uninstall The Lost Continent, completely removing all elements that it uses\* without affecting any other non-dependent DLCs. And that's it!

    *\*Always double-check that this DLC uninstalled correctly! The Lost Continent does its best to remove itself and its dependencies; if you find that it did not, please [report it as a bug](https://docs.google.com/forms/d/e/1FAIpQLSfm4wEvcERhBCxIhuzV7Gi4yX_sYCBn8zpUE2acBfyOEFW7OA/viewform?usp=sf_link) on Google Forms or [create an issue](https://github.com/iHeronGH/Elytras-of-Fire/issues) over on Github.*

---

## Features

[Back to top](#)

### Tribes

There are currently 3 tribes in The Lost Continent:

<details>

**<summary> Tribes </summary>**

[Back to top](#)

#### HiveWings

> *"The HiveWings are pristine with respect to both their appearance and their battle prowess. Cruel, serrated claws and their unique frost breath make this tribe nightmarish to combat, especially in the frigid lands they call home."*
> *\- H*

Passive Abilities: [Hive Mind](#hive-mind)<br>
Primary Ability: [Frost Breath](#abilities)<br>
Secondary Ability: [Serrated Strike](#abilities)<br>
Tertiary Ability: [Icicle Incision](#abilities)

#### LeafWings

> *"The LeafWings are an impressive tribe. From their exceptional fire breath and strong muscles to their ability to last impossible lengths of time underwater, their massive power is unbiased to any environment."*
> *\- H*

Passive Abilities: [Silk Spinner](#silk-spinner)<br>
Primary Ability: [Flame Breath](#abilities)<br>
Secondary Ability: [Terrashock](#abilities)<br>
Tertiary Ability: [Leaf Swipe](#abilities)

#### SilkWings

> *"The SilkWings are the uncontested rulers of the silks. Their keen eyes allow them to see in the dark, and over many millenia have adapted glowing scales, strong tails, gills, and webbed talons. No attack on the SilkWings has gone without heavy loss."*
> *\- H*

Passive Abilities: [Photosynthesis](#true-blessing)<br>
Primary Ability: [Tidal Wave](#abilities)<br>
Secondary Ability: [Ocean's Blessing](#abilities)<br>
Tertiary Ability: [Tail Flail](#abilities)

</details>

---

### Passives

There are currently 8 passive abilities in Elytras of Fire:

<details>

**<summary> Passives </summary>**

[Back to top](#)

#### Hive Mind

Hive Mind is a [HiveWing](#hivewings) passive ability. It gives varying effects depending on how many other HiveWings are around the user.

| Level |     Activation     |              Effect             | Charge Duration | Cooldown |
|:-----:|:------------------:|:-------------------------------:|:---------------:|:--------:|
|   1   |  1 nearby HiveWing |           Speed 1 (1s)          |       None      |   None   |
|   2   | 2 nearby HiveWings |           Speed 2 (1s)          |       None      |   None   |
|   3   | 3 nearby HiveWings | Speed 2 (1s)<br>Strength 1 (1s) |       None      |   None   |

#### Photosynthesis

Photosynthesis is a [LeafWing](#leafwings) passive ability. It gives variable levels of Regeneration depending on the time of day.

| Level |                     Activation                     |          Effect          | Charge Duration | Cooldown |
|:-----:|:--------------------------------------------------:|:------------------------:|:---------------:|:--------:|
|   1   |    Time is between dusk (24000) and dawn (12000)   |    Regeneration 1 (2s)   |       None      |    20s   |
|   2   | Time is between sunset (21600) and sunrise (14400) | Regeneration 2 (3s) (1s) |       None      |    20s   |

#### Silk Spinner

Silk Spinner is a [SilkWing](#silkwings) passive ability.

| Level | Activation | Effect | Charge Duration | Cooldown |
|:-----:|:----------:|:------:|:---------------:|:--------:|
|   1   |            |        |       None      |   None   |
|   2   |            |        |       None      |   None   |

</details>

---

### Abilities

There are currently 18 unique abilities in Elytras of Fire:

<details>

**<summary> Primary Abilities </summary>**

[Back to top](#)

|    Ability   |                      Tribes                     | Cooldown |      Activation     |           Self Effects          |                                                                  Enemy Effects                                                                 |
|:------------:|:-----------------------------------------------:|:--------:|:-------------------:|:-------------------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------:|
| Frost Breath |                     [HiveWings](#hivewings)                    |    10s   | Sneak + Right-click |               None              |                           [Frostbite](#frostbite) (∞)<br>Mining Fatigue 2 (5s)<br>Slowness 2 (5s)<br>Weakness 1 (5s)                           |
| Flame Breath | [LeafWings](#leafwings)<br>[NightWings](#nightwings)<br>[SandWings](#sandwings)<br>[SkyWings](#skywings) |    10s   | Sneak + Right-click | Removes [Frostbite](#frostbite) |                                              Ignites those hit<br>Removes [Frostbite](#frostbite)                                              |
|  Venom Shot  |                    [RainWings](#rainwings)                    |    10s   | Sneak + Right-click |               None              |                                                                  Wither 3 (3s)                                                                 |
|  Tidal Wave  |                     [SilkWings](#silkwings)                    |    10s   | Sneak + Right-click |               None              | Mining Fatigue 1 (4s)<br>Slowness 1 (4s)<br><br>**[Torrent](#torrent-1) 1:**<br>Poison 2 (3s)<br><br>**[Torrent](#torrent-1) 2:**<br>Poison 4 (3s) |

</details>

<details>

**<summary> Secondary Abilities </summary>**

[Back to top](#)

|      Ability     |   Tribes   | Cooldown |  Activation |                                Self Effects                               |        Enemy Effects        |
|:----------------:|:----------:|:--------:|:-----------:|:-------------------------------------------------------------------------:|:---------------------------:|
|  Serrated Strike |  [HiveWings](#hivewings)  |    24s   | Right-click |                     Strength 2 (10s)<br>Speed 1 (10s)                     | [Frostbite](#frostbite) (∞) |
|    Terrashock    |  [LeafWings](#leafwings)  |    24s   | Right-click |        Absorption 1 (10s)<br>Resistance 1 (10s)<br>Strength 3 (10s)       |       Slowness 1 (6s)       |
|   Shade Shackle  | [NightWings](#nightwings) |   None   |     Hold    |                          Blindness<br>Slowness 3                          |   Blindness<br>Slowness 3   |
|    Overgrowth    |  [RainWings](#rainwings) |    24s   | Right-click |                             Resistance 2 (8s)                             |       Slowness 2 (8s)       |
|   Desert Storm   |  [SandWings](#sandwings) |    24s   | Right-click |                     Strength 2 (10s)<br>Speed 3 (10s)                     |        Blindness (6s)       |
| Ocean's Blessing |  [SilkWings](#silkwings)  |   None   |     Hold    |                                Speed 2 (3s)                               |             None            |
|     Sky Surge    |  [SkyWings](#skywings)  |    24s   | Right-click |                    Strength 3 (8s)<br>Resistance 1 (8s)                   |             None            |

<sup>4</sup>: Gives Slowness 2 from 6-10 meters away.

</details>

<details>

**<summary> Tertiary Abilities </summary>**

[Back to top](#)

|     Ability     |   Tribes   | Cooldown | Activation |               Self Effects               |                                                                Enemy Effects                                                                |
|:---------------:|:----------:|:--------:|:----------:|:----------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------:|
| Icicle Incision |  [HiveWings](#hivewings)  |   None   |    Melee   |                   None                   | Removes [Frostbite](#frostbite)<br><br>**On Non-Frostbitten Enemies:**<br>Poison 3 (1s)<br><br>**On Frostbitten Enemies:**<br>Wither 2 (3s) |
|    Leaf Swipe    |  [LeafWings](#leafwings)  |    12s   |    Melee   |                   None                   |                                                      Slowness 1 (6s)<br>Weakness 1 (4s)                                                     |
|   Premonition   | [NightWings](#nightwings) |    20s   |    Melee   | Blocks all incoming<br>projectiles (10s) |                                                                     None                                                                    |
|     Soul Sap    |  [RainWings](#rainwings) |    20s   |    Melee   |            Regeneration 3 (2s)           |                                                                     None                                                                    |
|   Toxin Slash   |  [SandWings](#sandwings) |   None   |    Melee   |                   None                   |                                                                Poison 1 (4s)                                                                |
|    Tail Flail   |  [SilkWings](#silkwings)  |    12s   |    Melee   |                   None                   |                                      Blindness (4s)<br><br>**[Torrent](#torrent-1) 2:**<br>Blindness (7s)                                     |
|   Spark Punch   |  [SkyWings](#skywings)  |   None   |    Melee   |                   None                   |                                   **Spark Mode:**<br>Ignites those hit<br>Removes [Frostbite](#frostbite)                                   |

</details>

---

### Custom Effects

There are currently 3 custom effects in Elytras of Fire:

<details>

**<summary> Custom Effects </summary>**

[Back to top](#)

#### Frostbite

Frostbite is a custom effect that doesn't do anything on its own; however, it has special interactions with other abilities.

|            Ability            | Level |             Interaction            |
|:-----------------------------:|:-----:|:----------------------------------:|
|   [Frost Breath](#abilities)  |   1   |        Applies Frostbite (∞)       |
|   [Flame Breath](#abilities)  |   1   |          Removes Frostbite         |
| [Serrated Strike](#abilities) |   1   |        Applies Frostbite (∞)       |
| [Icicle Incision](#abilities) |   1   | Wither 2 (3s)<br>Removes Frostbite |

#### Torrent

Torrent is a custom effect that makes the user deal greater and greater damage the lower the user's health is. It also has special interactions with certain abilities.

| Torrent Level | Health Threshold | Damage Increase |
|:-------------:|:----------------:|:---------------:|
|       1       |     7 hearts     |        +3       |
|       2       |     4 hearts     |        +6       |

| Torrent Level |   Ability  |  Interaction  |
|:-----:|:----------:|:-------------:|
|   1   | [Tidal Wave](#abilities) | Poison 2 (3s) |
|   1   | [Tidal Wave](#abilities) | Poison 4 (3s) |
|   1   | [Tail Flail](#abilities) | Blindness (7s) |

#### Photosynthesis

Photosynthesis is a custom effect that increases the users movement speed in water immensely and gives a slow regeneration buff. Taking any damage while Photosynthesis is active will deactivate it until obtained again.

| Photosynthesis Level |                                               Effects                                               |
|:-------------------:|:---------------------------------------------------------------------------------------------------:|
|          1          | Dolphin's Grace (1s) while swimming<br>Speed 4 (4s) while swimming<br>Regeneration 1 (3s) every 15s |

</details>

---

## Planned Features

[Back to top](#)

### Abilities

Arguably one of the most major parts of Elytras of Fire, abilities will be coming soon!

---

## Other Qualities

[Back to top](#)

### IMP Compliance

The following features of Elytras of Fire are listed to prove [IMP compliance](https://github.com/Arcensoth/imp-spec), which are a set of suggested guidelines for Minecraft datapacks that ensure quality, compatibility, and optimal user and development experience.

> Core Standards: [Leave vanilla alone](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_core.md#1-leave-vanilla-alone)

No changes are made to the **`minecraft`** namespace.

> Core Standards: [Namespace everything](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_core.md#2-namespace-everything)

All entity tags, custom items, scoreboard objectives, and storages used in Elytras of Fire use the following namespaces to clarify association with Elytras of Fire:

- **`eoflib`**
- **`eof`**

> Documentation: [Function headers](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_doc.md#function-headers)

All functions utilise the IMP-recommended header to the best of my ability. I do not guarantee 100% accuracy.

> Documentation: [Function annotations](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_doc.md#function-annotations)

All functions utilise the appropriate IMP-recommended annotations to the best of my ability. I do not guarantee 100% accuracy.
