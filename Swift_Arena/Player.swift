//
//  File.swift
//  Swift_Arena
//
//  Created by Martin Flament on 29/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

public class Player {
    
    var name = ""
    var team = [Character]()
    
    
    // Nommer le joueur
    func namePlayer() {
        print("Votre prénom :")
        if let userName = readLine() {
            self.name = userName
        }
        print("Bienvenue \(self.name) !")
    }
    
    
    //Ajouter 3 personnages à l'équipe
    func makeTeam() {
        while self.team.count < 3 {
            if let userChoice = readLine() {
                switch userChoice {
                case "1":
                    let warrior = Warrior()
                    self.team.append(warrior)
                    self.nameCharacter()
                case "2":
                    let wizard = Wizard()
                    self.team.append(wizard)
                    self.nameCharacter()
                case "3":
                    let archery = Archery()
                    self.team.append(archery)
                    self.nameCharacter()
                default:
                    print("Je n'ai pas compris.")
                }
            }
        }
        print("L'équipe de \(self.name) se compose de :")
        for name in self.team {
            print(name.firstName)
            print(name.name + "\n")
        }
    }
    
    
    // Nommer le personnage
    func nameCharacter() {
        print("Choisissez un nom pour votre \(self.team.last!.firstName)")
        if let userClasseNameChoice = readLine() {
            self.team.last!.name = userClasseNameChoice
            print("Votre \(self.team.last!.firstName) s'appelle : \(self.team.last!.name)")
        }
    }
    
    
    // La team est prète
    
    
    // Sélectionner le personnage qui va réaliser une action
    func selectFighter() -> Character {
        var characterChoosen : Character?
        
        while characterChoosen == nil {
            if let userChoice = readLine() {
                switch userChoice {
                case "1":
                    characterChoosen = self.team[0]
                    selectAction(attaquant: characterChoosen!)
                case "2":
                    characterChoosen = self.team[1]
                    selectAction(attaquant: characterChoosen!)
                case "3":
                    characterChoosen = self.team[2]
                    selectAction(attaquant: characterChoosen!)
                default:
                    print("Sélectionner un personnage")
                }
                
                if let character = characterChoosen, character.life <= 0 {
                    print("Ce personnage est mort")
                    characterChoosen = nil
                }
            }
        }
        return characterChoosen!
    }
    
    
    
    // Sélectionner l'action à réaliser
    func selectAction(attaquant:Character) {
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
        
           if let userChoice = readLine() {
               switch userChoice {
               case "1":
                playerTwo.team[0].life -= figther.weapon.hit
               case "2":
                playerTwo.team[1].life -= figther.weapon.hit
               case "3":
                playerTwo.team[2].life -= figther.weapon.hit
               default:
                   print("Je n'ai pas compris.")
               }
           }
       }
    
    
    //    -    -   -   -   -
    
    
    // Qui défendre
    func targetDef(attaquant:Character) {
        attaquant.life += attaquant.weapon.hit
        
    }
    
    
    // Qui Soigner
    func targetHeal(soignant:Character,soigné:Character) {
    }
    
    
}

var playerOne = Player()
var playerTwo = Player()
