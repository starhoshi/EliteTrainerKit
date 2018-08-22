# EliteTrainerKit


[![Cocoapods](http://img.shields.io/cocoapods/v/EliteTrainerKit.svg)](https://cocoapods.org/pods/EliteTrainerKit)
[![Cocoapods](http://img.shields.io/cocoapods/p/EliteTrainerKit.svg)](https://cocoapods.org/pods/EliteTrainerKit)
[![Build Status](https://travis-ci.org/starhoshi/EliteTrainerKit.svg?branch=master)](https://travis-ci.org/starhoshi/EliteTrainerKit)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)


Pokemon Go utility library for Swift.

# Installation

```
pod 'EliteTrainerKit'
```

# Usage

## Calculate Individual Value

```swift
// pokemon's base stats
let bulbasaurBaseStats = BaseStats(attack: 118, defense: 118, stamina: 90)

let levels = [Level._35]
// or
// let levels = Level.levels(stardust: 8000)

// You can get individual value
let values = Pokemon.calculateIV(baseStats: bulbasaurBaseStats, cp: 852, hp: 76, levels: levels)
```

# LICENSE

MIT
