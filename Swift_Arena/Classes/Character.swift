//
//  Classes.swift
//  Swift_Arena
//
//  Created by Martin Flament on 29/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

public class Character {
    
    var firstName: String
    var name: String
    var weapon: Weapons
    var life: Int
    
    init(name: String, weapon: Weapons, life: Int, firstName: String) {
        self.firstName = firstName
        self.name = name
        self.weapon = weapon
        self.life = life
    }
    
    
}

