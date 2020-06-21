//
//  Game.swift
//  Swift_Arena
//
//  Created by Martin Flament on 17/06/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

class Game {
    
    // Tant que le joueur n'a pas choisi de personnage pour attaquer {
    func selectFighter() -> Character {
        var characterChoosen : Character?
        
        while characterChoosen == nil {
            print("Sélectionner le personnage qui va réaliser l'action")
            Player.descriptionTeam()
            if let userChoice = readLine() {
                switch userChoice {
                case "1":
                    game.randomChest(for: playerOne.team[0])
                    characterChoosen = self.team[0]
                    print("Vous avez sélectionné \(characterChoosen!.name)")
                    selectAction(attaquant: characterChoosen!)
                case "2":
                    characterChoosen = self.team[1]
                    print("Vous avez sélectionné \(characterChoosen!.name)")
                    selectAction(attaquant: characterChoosen!)
                case "3":
                    characterChoosen = self.team[2]
                    print("Vous avez sélectionné \(characterChoosen!.name)")
                    selectAction(attaquant: characterChoosen!)
                default:
                    print("Sélectionner un personnage")
                }
                
                if let character = characterChoosen, character.life <= 0 {
                    print("☠️ Ce personnage est mort... ☠️")
                    characterChoosen = nil
                }
            }
        }
        return characterChoosen!
    }
    
    // Sélectionner l'action à réaliser
    func selectAction(attaquant:Character) {
        print("Sélectionner l'action à réaliser !!"
            + "\n1. Attaquer"
            + "\n2. Se défendre"
            + "\n3. Soigner")
                if let choice = readLine() {
                    switch choice {
                    case "1":
                        targetAttak(figther: attaquant)
                    case "2":
                        //targetDef
                        targetDef(attaquant: attaquant)
                    default:
                        print("Je n'ai pas compris.")
            }
        }
    }
    
    
    // Sélectionner une cible
    func targetAttak(figther:Character) { //Peut être une insertion de l'argument "enemi"
        print("Cibler votre action !!"
            + "\n1. \(playerTwo.team[0].name) le \(playerTwo.team[0].firstName)"
            + "\n2. \(playerTwo.team[1].name) le \(playerTwo.team[1].firstName)"
            + "\n3. \(playerTwo.team[2].name) le \(playerTwo.team[2].firstName)")
           if let userChoice = readLine() {
               switch userChoice {
               case "1":
                playerTwo.team[0].life -= figther.weapon.hit
                print(playerTwo.team[0].life)
                //figther.ready = false
                
               case "2":
                playerTwo.team[1].life -= figther.weapon.hit
                 print(playerTwo.team[1].life)
               case "3":
                playerTwo.team[2].life -= figther.weapon.hit
                 print(playerTwo.team[2].life)
               default:
                   print("Je n'ai pas compris.")
               }
           }
       }
    
    func load() {
        playerOne.namePlayer()
        playerOne.makeTeam()
        
        playerTwo.namePlayer()
        playerTwo.makeTeam()
    }
    
    func start() {
        
        
        
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

