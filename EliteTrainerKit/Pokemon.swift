//
//  Pokemon.swift
//  EliteTrainerKit
//
//  Created by kensuke-hoshikawa on 2018/08/22.
//  Copyright © 2018年 star__hoshi. All rights reserved.
//

import Foundation

struct Pokemon {
    private static func calculateHP(baseStats: BaseStats, stamina: Int, cpm: Float) -> Int {
        return Int(max(10, floor(cpm * Float(baseStats.stamina + stamina))))
    }

    private static func possibleStaminaValues(baseStats: BaseStats, hp: Int, cpm: Float) -> [Int] {
        return (0...15).filter { hp == calculateHP(baseStats: baseStats, stamina: $0, cpm: cpm) }
    }

    private static func parseIV(iv: String, level: Level) -> IVResult {
        let maskAttack = 0xf00
        let maskDefense = 0x0f0
        let maskStamina = 0x00f

        let ivInt = Int(iv, radix: 16)!

        return IVResult (
            level: level,
            attack: (ivInt & maskAttack) >> 8,
            defense: (ivInt & maskDefense) >> 4,
            stamina: ivInt & maskStamina
        )
    }

    private static func calculateCP(baseStats: BaseStats, iv: String, level: Level) -> Int {
        let iv = Pokemon.parseIV(iv: iv, level: level)
        let attack = Float(baseStats.attack + iv.attack)
        let defense = pow(Float(baseStats.defense + iv.defense), 0.5)
        let hp = pow(Float(baseStats.stamina + iv.stamina), 0.5)
        let value = max(10, floor(attack * defense * hp * pow(level.cpm, 2) / 10))
        return Int(value)
    }

    static func calculateIV(baseStats: BaseStats, cp: Int, hp: Int, levels: [Level]) -> [IVResult] {
        let dec = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
        var results: [IVResult] = []
        levels.forEach { level in
            let staminaIndexes = possibleStaminaValues(baseStats: baseStats, hp: hp, cpm: level.cpm)
            staminaIndexes.forEach { staminaIndex in
                dec.forEach { attack in
                    dec.forEach { defense in
                        let iv = "\(attack)\(defense)\(dec[staminaIndex])"
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
