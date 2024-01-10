# The Lost Continent

## Welcome!

The Lost Continent is a Minecraft datapack directly inspired by the world of Wings of Fire! Inspired by Pantala, it adds in the three new tribes, along with three new abilities and immersive passive abilities for each one!

This DLC depends on [Elytras of Fire Lib](https://github.com/iHeronGH/Elytras-of-Fire-Lib) and requires its [installation](#installation-and-uninstallation) in order to be used correctly.

---

## Table of Contents

- [The Lost Continent](#the-lost-continent)
  - [Welcome!](#welcome)
  - [Table of Contents](#table-of-contents)
  - [Installation and Uninstallation](#installation-and-uninstallation)
  - [Features](#features)
    - [Tribes](#tribes)
      - [HiveWings](#hivewings)
      - [LeafWings](#leafwings)
      - [SilkWings](#silkwings)
    - [Passives](#passives)
      - [Synchrosocial](#synchrosocial)
      - [Photosynthesis](#photosynthesis)
      - [Silk Spinner](#silk-spinner)
  - [Planned Features](#planned-features)
    - [Tribe Abilities](#tribe-abilities)
    - [Custom Effects](#custom-effects)
      - [Entangled](#entangled)
    - [Custom Interactions](#custom-interactions)
      - [Poison Points](#poison-points)
      - [Web Trails](#web-trails)
  - [Other Qualities](#other-qualities)
    - [IMP Compliance](#imp-compliance)

---

## Installation and Uninstallation

[Back to top](#)

Installing The Lost Continent is relatively simple:

1. Download the datapack using the [Releases](https://github.com/iHeronGH/The-Lost-Continent/releases) tab on the right (this will be populated when the datapack is in a releasable state, which it is not as of writing this.)
2. Open your world folder and place the downloaded folder into the "datapacks" folder. **Make sure you have [Elytras of Fire Lib](https://github.com/iHeronGH/Elytras-of-Fire-Lib/releases) in this same folder, or else this datapack will not work!**
3. Use **`/reload`** in-game to refresh your world. If you have installed it correctly, you will be met with a successful installation message. Thank you for using The Lost Continent! I hope you enjoy it.

And uninstalling The Lost Continent is even simpler:

1. Run the command **`/function tlc:uninstall`**. This will uninstall The Lost Continent, completely removing all elements that it uses\* without affecting any other non-dependent DLCs. And that's it!

 *\*Always double-check that this DLC uninstalled correctly! The Lost Continent does its best to remove itself and its dependencies; if you find that it did not, please [report it as a bug](https://docs.google.com/forms/d/e/1FAIpQLSfm4wEvcERhBCxIhuzV7Gi4yX_sYCBn8zpUE2acBfyOEFW7OA/viewform?usp=sf_link) on Google Forms or [create an issue](https://github.com/iHeronGH/The-Lost-Continent/issues) over on Github.*

---

## Features

[Back to top](#)

### Tribes

The Lost Continent comes with 3 tribes:

<details>

**<summary> Tribes </summary>**

[Back to top](#)

#### HiveWings

> *"The HiveWings are a cooperative bunch, able to work together in unison to accomplish great things. Between the wicked stingers they wield and the foul stench they can weaponize, even alone they are ferocious combatants, but together they are unstoppable."*
> *\- C*

Passive Abilities: [Synchrosocial](#synchrosocial)<br>
Primary Ability: [Acid Spray](#tribe-abilities)<br>
Secondary Ability: [Hive Mind](#tribe-abilities)<br>
Tertiary Ability: [Sting Strike](#tribe-abilities)

Innate Attributes:

- Strength 2

#### LeafWings

> *"The LeafWings are the epitome of adaptation. Having lost their forest homes to a savage war, they've honed their affinity for nature over thousands of years in the form of Leafspeak, and by using this they can converse with and command flora to uncanny degrees."*
> *\- C*

Passive Abilities: [Photosynthesis](#photosynthesis)<br>
Primary Ability: [Fury Shift](#tribe-abilities)<br>
Secondary Ability: [Leafspeak](#tribe-abilities)<br>
Tertiary Ability: [Venom Aura](#tribe-abilities)

Innate Attributes:

- Speed 1
- Strength 1

#### SilkWings

> *"The SilkWings are a deceptively passive tribe. Able to produce silk stronger than nearly any other material known to dragonkind, they use this to ensnare prey and opponents alike. Angering a SilkWing takes guts, time... and a lot of stupidity."*
> *\- C*

Passive Abilities: [Silk Spinner](#silk-spinner)<br>
Primary Ability: [Silk Shot](#tribe-abilities)<br>
Secondary Ability: [Sense](#tribe-abilities)<br>
Tertiary Ability: [Webbing](#tribe-abilities)

Innate Attributes:

- Speed 2

</details>

---

### Passives

The Lost Continent comes with 3 passive abilities:

<details>

**<summary> Passives </summary>**

[Back to top](#)

#### Synchrosocial

Synchrosocial is a [HiveWing](#hivewings) passive ability. It gives varying levels of Speed depending on how many other HiveWings are around the user.

| Level |     Activation     |    Effect    | Charge Duration | Cooldown |
| :---: | :----------------: | :----------: | :-------------: | :------: |
|   1   | 2 nearby HiveWings | Speed 1 (1s) |       ---       |   ---    |
|   2   | 3 nearby HiveWings | Speed 2 (3s) |       ---       |   ---    |
|   3   | 4 nearby HiveWings | Speed 3 (5s) |       ---       |   ---    |

#### Photosynthesis

Photosynthesis is a [LeafWing](#leafwings) passive ability. It gives variable levels of Regeneration depending on the time of day.

| Level |          Activation           |       Effect        | Charge Duration | Cooldown |
| :---: | :---------------------------: | :-----------------: | :-------------: | :------: |
|   1   | Time is between dawn and dusk | Regeneration 2 (2s) |       ---       |   20s    |

#### Silk Spinner

Silk Spinner is a [SilkWing](#silkwings) passive ability. It has special interactions with certain abilities and has a charge rate of 300 charges per second, which can be increased by different means.

| Level | Activation |                              Effect                               | Charge Duration | Cooldown |
| :---: | :--------: | :---------------------------------------------------------------: | :-------------: | :------: |
|   1   | Automatic  |  Silk Shot becomes Silk Snipe, shooting a straight line of silk   |       3s        |   ---    |
|   2   | Automatic  |  Silk Shot becomes Silk Snipe, shooting a straight line of silk   |       4s        |   ---    |
|   3   | Automatic  |  Silk Shot becomes Silk Snipe, shooting a straight line of silk   |       5s        |   ---    |
|   4   | Automatic  | Silk Shot becomes Silk Burst, blasting three arcing lines of silk |       6s        |   ---    |
|   5   | Automatic  | Silk Shot becomes Silk Burst, blasting three arcing lines of silk |       6s        |   ---    |

</details>

---

## Planned Features

[Back to top](#)

---

### Tribe Abilities

There are currently 9 unique abilities planned to be in The Lost Continent:

<details>

**<summary> Primary Abilities </summary>**

[Back to top](#)

|  Ability   |         Tribes          | Cooldown |     Activation      |                    Self Effects                     |                                                                                                                                                                                                                          Enemy Effects                                                                                                                                                                                                                           |
| :--------: | :---------------------: | :------: | :-----------------: | :-------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
| Acid Spray | [HiveWings](#hivewings) |   10s    | Sneak + Right-click |                         ---                         |                                                                                                                                                                                                                  Wither 3 (2s)<br>Nausea 1 (8s)                                                                                                                                                                                                                  |
| Fury Shift | [LeafWings](#leafwings) |   10s    | Sneak + Right-click |                         ---                         |                                                                                                                                       **Poison Dart Mode:**<br>![Full Heart](images/full_heart.png)<br>Poison 2 (3s)<br><br>**Sap Sling Mode:**<br>Slowness 3 (4s)<br>Weakness 1 (4s)                                                                                                                                        |
| Fury Shift | [LeafWings](#leafwings) |   ---    |     Right-click     | Toggles between Poison Dart mode and Sap Sling mode |                                                                                                                                                                                                                               ---                                                                                                                                                                                                                                |
| Silk Shot  | [SilkWings](#silkwings) |   10s    | Sneak + Right-click |       Consumes 3,600 charges of Silk Spinner        | **Silk Snipe:**<br>![Three-Quarters Heart](images/three_quarters_heart.png)<br>Mining Fatigue 1 (4s)<br><br>*Silk Spinner 1:*<br>Slowness 1 (4s)<br>*Silk Spinner 2:*<br>Slowness 1 (5s)<br>*Silk Spinner 3:*<br>Slowness 2 (5s)<br><br>**Silk Burst:**<br>![Full Heart](images/full_heart.png)<br>Mining Fatigue 2 (4s)<br><br>*Silk Spinner 1:*<br>Slowness 3 (4s)<br>*Silk Spinner 2:*<br>Slowness 3 (5s) |

</details>

<details>

**<summary> Secondary Abilities </summary>**

[Back to top](#)

|  Ability  |         Tribes          | Cooldown | Activation  |                                                                                                                    Self Effects                                                                                                                    |                                       Enemy Effects                                       |
| :-------: | :---------------------: | :------: | :---------: | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------: |
| Hive Mind | [HiveWings](#hivewings) |   24s    | Right-click | Strength 2 (6s)<br><br>**[Synchrosocial](#synchrosocial) 1:**<br>Speed 2 (6s)<br><br>**[Synchrosocial](#synchrosocial) 2:**<br>Speed 3 (6s)<br><br>**[Synchrosocial](#synchrosocial) 3:**<br>Speed 3 (6s)<br>Nearby HiveWings gain Strength 2 (6s) |                                            ---                                            |
| Leafspeak | [LeafWings](#leafwings) |   24s    | Right-click |                                                                                                                 Resistance 1 (6s)                                                                                                                  | Summons 3 Poison Points randomly placed within a short radius, each lasting for 8 seconds |
|   Sense   | [SilkWings](#silkwings) |   ---    |    Hold     |                                                                         Creates aural and visual indicators detecting nearby enemies, growing in frequency with proximity                                                                          |                                            ---                                            |

</details>

<details>

**<summary> Tertiary Abilities </summary>**

[Back to top](#)

|   Ability    |         Tribes          | Cooldown | Activation  |                  Self Effects                  |                                                     Enemy Effects                                                     |
| :----------: | :---------------------: | :------: | :---------: | :--------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------: |
| Sting Strike | [HiveWings](#hivewings) |   40s    |    Melee    |                      ---                       | **Paralysis Mode:**<br>Slowness 5 (8s)<br>Weakness 2 (8s)<br><br>**Poison Mode:**<br>Poison 4 (8s)<br>Weakness 2 (5s) |
| Sting Strike | [HiveWings](#hivewings) |   ---    | Right-click | Toggles between Paralysis mode and Poison mode |                                                          ---                                                          |
|  Venom Aura  | [LeafWings](#leafwings) |   12s    |    Melee    |                      ---                       |                                                          ---                                                          |
|   Webbing    | [SilkWings](#silkwings) |   12s    |    Melee    |                      ---                       |                                    Slowness 3 (6s)<br>[Entangled](#entangled) (6s)                                    |
|   Webbing    | [SilkWings](#silkwings) |   ---    |    Hold     |        Silk Spinner charges 33% faster         |                                                          ---                                                          |

</details>

---

### Custom Effects

There is currently 1 custom effect planned to be in The Lost Continent:

<details>

**<summary> Custom Effects </summary>**

[Back to top](#)

#### Entangled

Entangled is a custom effect that forces those affected by it to leave a path of [Web Trails](#web-trails).

|           Ability           | Level |      Interaction       |
| :-------------------------: | :---: | :--------------------: |
| [Webbing](#tribe-abilities) |   1   | Applies Entangled (6s) |

</details>

---

### Custom Interactions

There are currently 2 custom interactions planned to be in The Lost Continent:

<details>

**<summary> Custom Interactions </summary>**

[Back to top](#)

#### Poison Points

Poison Points are decently-sized pools of toxins that inflict nasty effects on those who wander into them.

|     Tribe     |           Interaction            |
| :-----------: | :------------------------------: |
| Non-LeafWings | Poison 4 (2s)<br>Slowness 2 (2s) |

#### Web Trails

Web Trails are small blobs of silk left behind by those affected by Entangled. While most tribes caught in them will be negatively affected, SilkWings can use these webs to gain special buffs.

|     Tribe     |                   Interaction                   |
| :-----------: | :---------------------------------------------: |
| Non-SilkWings |                 Slowness 2 (3s)                 |
|   SilkWings   | Speed 3 (3s)<br>Silk Spinner charges 20% faster |

</details>

---

## Other Qualities

[Back to top](#)

### IMP Compliance

The following features of The Lost Continent are listed to prove [IMP compliance](https://github.com/Arcensoth/imp-spec), which are a set of suggested guidelines for Minecraft datapacks that ensure quality, compatibility, and optimal user and development experience.

> Core Standards: [Leave vanilla alone](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_core.md#1-leave-vanilla-alone)

No overwriting changes are made to the **`minecraft`** namespace.

> Core Standards: [Namespace everything](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_core.md#2-namespace-everything)

All entity tags, custom items, scoreboard objectives, and storages used in The Lost Continent use the following namespaces to clarify association with Elytras of Fire:

- **`eoflib`**
- **`tlc`**

> Documentation: [Function headers](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_doc.md#function-headers)

All functions utilise the IMP-recommended header to the best of my ability. I do not guarantee 100% accuracy.

> Documentation: [Function annotations](https://github.com/Arcensoth/imp-spec/blob/master/docs/imp_doc.md#function-annotations)

All functions utilise the appropriate IMP-recommended annotations to the best of my ability. I do not guarantee 100% accuracy.
