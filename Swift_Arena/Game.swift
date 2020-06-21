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
        
        while playerOne.team[0].life >= 0 || playerOne.team[1].life >= 0 || playerOne.team[2].life >= 0 {
            //if playerOne.loop = true {
            playerOne.selectFighter()
            //if playerTwo.loop = true {
        }
    }


    
    
    func randomChest(for theFighter:Character) {
        let randomChest1 = Int(arc4random_uniform(5))
        
        if randomChest1 == 1 {
            if theFighter is Warrior {
                print("Votre guerrier vient d'obtenir une super épée !")
                theFighter.weapon = SuperSword()
            } else if theFighter is Wizard {
                print("Votre Mage vient d'obtenir un super baton !")
                theFighter.weapon = SuperBow()
            } else {
                print("Votre archer vient d'obtenir un super arc !")
                theFighter.weapon = SuperWand()
            }
        }
        
    }


}

