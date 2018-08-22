//
//  ViewController.swift
//  Demo
//
//  Created by kensuke-hoshikawa on 2018/08/22.
//  Copyright © 2018年 star__hoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let bulbasaurBaseStats = BaseStats(attack: 118, defense: 118, hp: 90)
        let levels = Level.levels(stardust: 8000)
        let values = Pokemon.calculateIV(baseStats: bulbasaurBaseStats, cp: 852, hpValue
            : 76, levels: levels)
        print(values)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

