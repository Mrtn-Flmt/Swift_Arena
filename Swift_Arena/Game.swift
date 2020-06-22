//
//  Game.swift
//  Swift_Arena
//
//  Created by Martin Flament on 17/06/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

class Game {
    var characterChoosen : Character?
    
    
    func start() {
        preparePlayer(for: playerOne)
        preparePlayer(for: playerTwo)
            
        isAlive(player: playerOne)
        isAlive(player: playerTwo)
    }
    
    
    
    func preparePlayer(for player:Player) {
           player.namePlayer()
           player.makeTeam()
       }
    
    
    func isAlive(player:Player) {
        while player.team[0].life > 0 || player.team[1].life > 0 || player.team[2].life > 0  {
            gameLoop()
        }
    }
    
    
    func gameLoop() {
        var isPlayerTurn = true
        
        if isPlayerTurn == true {
            selectFighter(theSelect: playerOne ,oponant: playerTwo)
            isPlayerTurn = false
        } else {
            selectFighter(theSelect: playerTwo, oponant: playerOne)
            isPlayerTurn = true
        }
    }
    
    
    // Tant que le joueur n'a pas choisi de personnage pour attaquer {
    func selectFighter(theSelect:Player,oponant:Player) -> Character {
        
        
        while characterChoosen == nil {
            print("Sélectionner le personnage qui va réaliser l'action")
            theSelect.descriptionTeam()
            if let userChoice = readLine() {
                switch userChoice {
                case "1":
                    
                    characterChoosen = theSelect.team[0]
                    game.randomChest(for: characterChoosen!)
                    print("Vous avez sélectionné \(characterChoosen!.name)")
                    selectAction(attaquant: characterChoosen!,oponant: oponant)
                case "2":
                    characterChoosen = theSelect.team[1]
                    game.randomChest(for: characterChoosen!)
                    print("Vous avez sélectionné \(characterChoosen!.name)")
                    selectAction(attaquant: characterChoosen!,oponant: oponant)
                    
                case "3":
                    characterChoosen = theSelect.team[2]
                    game.randomChest(for: characterChoosen!)
                    print("Vous avez sélectionné \(characterChoosen!.name)")
                    selectAction(attaquant: characterChoosen!,oponant: oponant)
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
    func selectAction(attaquant:Character,oponant:Player) {
        print("Sélectionner l'action à réaliser !!"
            + "\n1. Attaquer"
            + "\n2. Se défendre"
            + "\n3. Soigner")
                if let choice = readLine() {
                    switch choice {
                    case "1":
                        targetAttak(figther: characterChoosen!, target: oponant)
                    case "2":
                        //targetDef
                        selectAction(attaquant: characterChoosen!, oponant: oponant)
                    default:
                        print("Je n'ai pas compris.")
                        selectAction(attaquant: characterChoosen!, oponant: oponant)
            }
        }
    }
    
    
    // Sélectionner une cible
    func targetAttak(figther:Character,target:Player) {
        print("Cibler votre attaque !"
            + "\n1. \(target.team[0].name) le \(target.team[0].firstName)"
            + "\n2. \(target.team[1].name) le \(target.team[1].firstName)"
            + "\n3. \(target.team[2].name) le \(target.team[2].firstName)")
           if let userChoice = readLine() {
               switch userChoice {
               case "1":
                target.team[0].life -= figther.weapon.hit
                print(target.team[0].life)
                characterChoosen = nil
                
               case "2":
                target.team[1].life -= figther.weapon.hit
                 print(target.team[1].life)
                characterChoosen = nil
               case "3":
                target.team[2].life -= figther.weapon.hit
                 print(target.team[2].life)
                characterChoosen = nil
               default:
                   print("Je n'ai pas compris.")
                targetAttak(figther: characterChoosen!, target: target)
               }
            
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

