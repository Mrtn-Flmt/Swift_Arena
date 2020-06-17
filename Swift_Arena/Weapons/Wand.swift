//
//  Wand.swift
//  Swift_Arena
//
//  Created by Martin Flament on 29/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

class Wand: Weapon {
    init() {
        super.init(name:"Baton",hit:15)
    }
}


class SuperWand: Weapon {
    init() {
        super.init(name: "Super baton of the dead", hit: 30)
    }
}
