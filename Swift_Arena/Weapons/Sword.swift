//
//  Sword.swift
//  Swift_Arena
//
//  Created by Martin Flament on 29/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

class Sword: Weapon {
    init() {
        super.init(name:"Epee",hit:10)
    }
}

class SuperSword: Weapon {
    init() {
        super.init(name: "Super Epee of the dead", hit: 20)
    }
}

