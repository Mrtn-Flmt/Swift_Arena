//
//  Game.swift
//  Swift_Arena
//
//  Created by Martin Flament on 17/06/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

class Game {
    
    func start() {
        
        playerOne.namePlayer()
        playerOne.makeTeam()
        
        playerTwo.namePlayer()
        playerTwo.makeTeam()
        
        
        playerOne.selectFighter()
        playerOne.selectAction(attaquant: playerOne.selectFighter())
    }


    
    
    func randomChest(for theFighter:Character) {
        let randomChest1 = Int(arc4random_uniform(5))
        
        if randomChest1 == 1 {
            if theFighter is Warrior {
                theFighter.weapon = SuperSword()
            } else if theFighter is Wizard {
                theFighter.weapon = SuperBow()
            } else {
                theFighter.weapon = SuperWand()
            }
        }
        
    }


}

