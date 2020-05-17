//
//  War.swift
//  Swift_Arena
//
//  Created by Martin Flament on 30/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

public class Warrior: Character {
    
    override init(name: String, weapon: Weapon, life: Int, firstName: String) {
        super.init(name: name, weapon: weapon, life: life, firstName: firstName)
    }
}
