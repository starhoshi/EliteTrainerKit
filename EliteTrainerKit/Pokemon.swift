//
//  Pokemon.swift
//  EliteTrainerKit
//
//  Created by kensuke-hoshikawa on 2018/08/22.
//  Copyright © 2018年 star__hoshi. All rights reserved.
//

import Foundation

struct Pokemon {
    private static func calculateHP(baseStats: BaseStats, hpIV: Int, cpm: Float) -> Int {
        return Int(max(10, floor(cpm * Float(baseStats.hp + hpIV))))
    }

    private static func possibleHPValues(baseStats: BaseStats, hpValue: Int, cpm: Float) -> [Int] {
        return (0...16).filter { hpValue == calculateHP(baseStats: baseStats, hpIV: $0, cpm: cpm) }
    }

    private static func parseIV(iv: String, level: Level) -> IVResult {
        let MASK_ATK = 0xf00
        let MASK_DEF = 0x0f0
        let MASK_STA = 0x00f

        let ivInt = Int(iv, radix: 16)!

        return IVResult (
            level: level,
            attack: (ivInt & MASK_ATK) >> 8,
            defense: (ivInt & MASK_DEF) >> 4,
            hp: ivInt & MASK_STA
        )
    }

    private static func calculateCP(baseStats: BaseStats, iv: String, level: Level) -> Int {
        let iv = Pokemon.parseIV(iv: iv, level: level)
        let attack = Float(baseStats.attack + iv.attack)
        let defense = pow(Float(baseStats.defense + iv.defense), 0.5)
        let hp = pow(Float(baseStats.hp + iv.hp), 0.5)
        let value = max(10, floor(attack * defense * hp * pow(level.cpm, 2) / 10))
        return Int(value)
    }

    static func calculateIV(baseStats: BaseStats, cp: Int, hpValue: Int, levels: [Level]) -> [IVResult] {
        let dec = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
        var results: [IVResult] = []
        levels.forEach { level in
            let hpIndexes = possibleHPValues(baseStats: baseStats, hpValue: hpValue, cpm: level.cpm)
            hpIndexes.forEach { hpIndex in
                dec.forEach { attack in
                    dec.forEach { defense in
                        let iv = "\(attack)\(defense)\(dec[hpIndex])"
                        let testCP = calculateCP(baseStats: baseStats, iv: iv, level: level)
                        if testCP == cp {
                            results.append(parseIV(iv: iv, level: level))
                        }
                    }
                }
            }
        }
        return results
    }
}
