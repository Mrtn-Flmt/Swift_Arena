//
//  File.swift
//  Swift_Arena
//
//  Created by Martin Flament on 29/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation


// Classe Joueur

public class Player {
    
    var name: String
    var team: [Character]
    
    init(name:String,team: [Character]) {
        self.name = name
        self.team = team
    }
    
    
    //créer le joueur
    func createPlayer() {
        self.namePlayer()
        self.makeTeam()
    }
    
        
    //nommer le joueur
    func namePlayer() {
        
        print("Hello !")
        uneLigne()
        print("Comment tu t'appelles ?")
        uneLigne()
        if let userName = readLine() {
            self.name = userName
        }
        deuxLigne()
        print("Bienvenue \(self.name) !")
        uneLigne()
        
    }
    
    
    //Créer une équipe
    func makeTeam() {
        print("Tu vas devoir remplir une équipe de trois personnages en choisissant pour chacun une classe et un nom !")
        uneLigne()
        
        while self.team.count < 3 {
            print("Sélectionner une classe :")
            uneLigne()
            
            print ("1 - ⚔️ Guerrier ⚔️"
                + "\n2 - 🧙‍♂️ Mage 🧙‍♂️"
                + "\n3 - 🏹 Archer 🏹")
            uneLigne()
            
            if let userChoiceCase = readLine() {
                switch userChoiceCase {
                case "1":
                    addWarToTeam()
                    
                case "2":
                    addWizardToTeam()
                    
                case "3":
                    addArcheryToTeam()
                    
                default:
                    print("Je n'ai pas compris")
                }
            }
        }
    }
    
    
    //ajouter un Guerrier à son équipe + appel de la méthode nommer
    func addWarToTeam() {
        let war = Warrior(name: "", weapon: Sword(name: "Epe", hit: 10), life:
            150,firstName: "Guerrier")
        self.team.append(war)
        nameCharacter()
        print("⚔️ Vous avez ajouté un \(self.team.last!.firstName) à votre équipe ! 🛡")
        uneLigne()
        print("\(self.team.last!.weapon.name)"
            + "\n\(self.team.last!.weapon.hit) points de dégats")
        uneLigne()
        
    }
        
        
    //ajouter un Mage à son équipe + appel de la méthode nommer
    func addWizardToTeam() {
        let wizard = Wizard(name: "", weapon: Wand(name: "Baton",hit: 15),
                            life: 125,firstName: "Mage")
        self.team.append(wizard)
        nameCharacter()
        print("🧙‍♂️ Vous avez ajouté un \(self.team.last!.firstName) à votre équipe ! ☂️")
        uneLigne()
        print("\(self.team.last!.weapon.name)"
            + "\n\(self.team.last!.weapon.hit) points de dégats")
        uneLigne()
    }
        
        
    //ajouter un Archer à son équipe + appel de la méthode nommer
    func addArcheryToTeam() {
        let archery = Archery(name: "", weapon: Bow(name: "Arc", hit: 20),
                              life: 100,firstName: "Archer")
        self.team.append(archery)
        nameCharacter()
        print("🏹 Vous avez ajouté un \(self.team.last!.firstName) à votre équipe ! 🎯")
            uneLigne()
            print("\(self.team.last!.weapon.name)"
                + "\n\(self.team.last!.weapon.hit) points de dégats")
            uneLigne()
    }
        
        
    //Nommer son character
    func nameCharacter() {
        deuxLigne()
        print("Vous souhaitez ajouter un \(self.team.last!.firstName)")
        uneLigne()
        print("Donnez lui un nom pour l'ajouter à votre équipe :")
        uneLigne()
        if let userClasseNameChoice = readLine() {
            self.team.last!.name = userClasseNameChoice
            deuxLigne()
        }
    }
    
    
}
