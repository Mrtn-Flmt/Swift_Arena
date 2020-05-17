//
//  Wand.swift
//  Swift_Arena
//
//  Created by Martin Flament on 29/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

class Wand: Weapon { // Pourquoi réinitialiser et ne pas insérer directement les valeur ?
    override init(name:String, hit: Int) {
        super.init(name:"Baton magique",hit:15)
    }
}
