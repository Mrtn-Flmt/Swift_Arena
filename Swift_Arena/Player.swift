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
    
    
    func descriptionTeam() {
        for charact in team {
            print("\(charact.name) le \(charact.firstName)")
        }
    }
    
    
    //Ajouter 3 personnages à l'équipe
    func makeTeam() {
        while self.team.count < 3 {
            print("Sélectionner votre classe !"
                + "\n1. \()")
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

