//
//  EliteTrainerKitTests.swift
//  EliteTrainerKitTests
//
//  Created by kensuke-hoshikawa on 2018/08/22.
//  Copyright © 2018年 star__hoshi. All rights reserved.
//

import XCTest
@testable import EliteTrainerKit

class EliteTrainerKitTests: XCTestCase {
    func testBulbasaur() {
        let bulbasaurBaseStats = BaseStats(attack: 118, defense: 118, stamina: 90) // フシギダネ
        let levels = Level.levels(stardust: 8000)
        let results = Pokemon.calculateIV(baseStats: bulbasaurBaseStats, cp: 852, hp: 76, levels: levels)
        XCTAssertEqual(results.count, 11)

        XCTAssertEqual(results.first?.level, ._35)
        XCTAssertEqual(results.first?.attack, 10)
        XCTAssertEqual(results.first?.defense, 14)
        XCTAssertEqual(results.first?.stamina, 10)

        XCTAssertEqual(results.last?.level, ._36)
        XCTAssertEqual(results.last?.attack, 13)
        XCTAssertEqual(results.last?.defense, 4)
        XCTAssertEqual(results.last?.stamina, 10)
    }

    func testTentacruel() {
        let tentacruelBaseStats = BaseStats(attack: 166, defense: 237, stamina: 160) // ドククラゲ
        let levels = Level.levels(stardust: 5000)
        let results = Pokemon.calculateIV(baseStats: tentacruelBaseStats, cp: 2034, hp: 128, levels: levels)
        XCTAssertEqual(results.count, 1)

        XCTAssertEqual(results.first?.level, ._30)
        XCTAssertEqual(results.first?.attack, 15)
        XCTAssertEqual(results.first?.defense, 15)
        XCTAssertEqual(results.first?.stamina, 15)
    }
}
