//
//  BaseStats.swift
//  EliteTrainerKit
//
//  Created by kensuke-hoshikawa on 2018/08/22.
//  Copyright © 2018年 star__hoshi. All rights reserved.
//

import Foundation

/// [Base stats in Pokemon GO - bulbapedia](https://bulbapedia.bulbagarden.net/wiki/Base_stats#In_Pok.C3.A9mon_GO)
public struct BaseStats {
    public let attack: Int
    public let defense: Int
    public let stamina: Int

    public init(attack: Int, defense: Int, stamina: Int) {
        self.attack = attack
        self.defense = defense
        self.stamina = stamina
    }
}
