//
//  Bow.swift
//  Swift_Arena
//
//  Created by Martin Flament on 29/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

class Bow: Weapon {
    init() {
        super.init(name: "Arc", hit: 20)
    }
    
}

class SuperBow: Weapon {
    init() {
        super.init(name: "Super Arc of the dead", hit: 40)
    }
}
