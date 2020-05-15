//
//  File.swift
//  Swift_Arena
//
//  Created by Martin Flament on 29/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

public class Player {
    
    var name: String
    var team:[Classe]
    
    init(name:String,team: [Classe]) {
        self.name = name
        self.team = team
    }
    
    
    public func namePlayer() {
        print("Quel est ton prenom ?")
        if let userName = readLine() {
            self.name = userName
        }
        print("Bienvenue \(self.name) !")
    }
    
    
    public func addCharacter() {
        while self.team.count < 3 {
            print("Sélectionner une classe à ajouter dans votre équipe !"
                + "\n 1 - Guerrier"
                + "\n 2 - Mage"
                + "\n 3 - Archer")
            if let userChoiceCase = readLine() {
                switch userChoiceCase {
                case "1":
                    let warrior = Warrior(name: "", weapon: Sword(name: "Epe", hit: 10), life: 150, firstName: "Guerrier")
                    self.team.append(warrior)
                    self.nameCharacter()
                case "2":
                    let wizard = Wizard(name: "", weapon: Wand(name: "Baton", hit: 15), life: 125, firstName: "Mage")
                    self.team.append(wizard)
                    self.nameCharacter()
                case "3":
                    let archery = Archery(name: "", weapon: Bow(name: "Arc", hit: 20), life: 100, firstName: "Archer")
                    self.team.append(archery)
                    self.nameCharacter()
                default:
                    print("Je n'ai pas compris.")
                }
            }
        }
        print("L'équipe de \(self.name) se compose de :")
        for name in self.team {
            print(name.name)
            print(name.firstName)
        }
    }
    
    
    public func nameCharacter() {
        print("Choisissez un nom pour le \(self.team.last!.firstName)")
        if let userClasseNameChoice = readLine() {
            self.team.last!.name = userClasseNameChoice
            print("Votre \(self.team.last!.firstName) s'appelle : \(self.team.last!.name)")
        }
    }
    
    
}
