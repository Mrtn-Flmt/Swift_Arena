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
    
    
    //créer le joueur 1
    func createPlayer() {
        self.namePlayer()
        self.makeTeam()
    }
    
        
    //nommer le joueur
    func namePlayer() {
        
        print("Hello !"
        + "\nComment tu t'appelles ?")
        uneLigne()
        if let userName = readLine() {
            self.name = userName
        }
        deuxLigne()
        print("Bienvenue \(self.name) !")
        uneLigne()
        
    }
    
    
    /* Tant qu'il y a moins de 3 classe dans le tableau de classe, l'utilisateur doit
    sélectionner une classe à ajouter et lui donner un nom. */
    func makeTeam() {
        print("Tu vas devoir remplir une équipe de trois personnages en choisissant pour chacun une classe et un nom !")
        deuxLigne()
        
        while self.team.count < 3 {
            print("Sélectionner une classe !")
            uneLigne()
            
            print ("1 - ⚔️ Guerrier ⚔️"
                + "\n2 - 🧙‍♂️ Mage 🧙‍♂️"
                + "\n3 - 🏹 Archer 🏹")
            uneLigne()
            
            if let userChoiceCase = readLine() {
                switch userChoiceCase {
                case "1":
                    addWarToTeam()
                    nameWar()
                case "2":
                    addWizardToTeam()
                    nameWizard()
                case "3":
                    addArcheryToTeam()
                    nameArchery()
                default:
                    print("Je n'ai pas compris")
                }
                
            }
            uneLigne()
        }
    }
    
    
    //ajouter un Guerrier à son équipe
    func addWarToTeam() {
        let war = Warrior(name: "", weapon: Sword(name: "Epe", hit: 10), life:
            150,firstName: "Guerrier")
        self.team.append(war)
        print("⚔️ Vous avez ajouté un \(war.firstName) à votre équipe ! 🛡"
            + "\n \(war.weapon.name)"
            + "\n \(war.weapon.hit)")
    }
        
        
    //ajouter un Mage à son équipe
    func addWizardToTeam() {
        let wizard = Wizard(name: "", weapon: Wand(name: "Baton",hit: 15),
                            life: 125,firstName: "Mage")
        self.team.append(wizard)
        print("🧙‍♂️ Vous avez ajouté un \(self.team.last!.firstName) à votre équipe ! ☂️"
            + "\n arme : \(self.team.last!.weapon.name)"
            + "\n degat :"
            + "\n \(self.team.last!.weapon.hit) points de dégats.")
    }
        
        
    //ajouter un Archer à son équipe
    func addArcheryToTeam() {
        
        let archery = Archery(name: "", weapon: Bow(name: "Arc", hit: 20),
                              life: 100,firstName: "Archer")
        self.team.append(archery)
        print("🏹 Vous avez ajouté un \(self.team.last!.firstName) à votre équipe ! 🎯"
            + "\n \(self.team.last!.weapon.name)"
            + "\n \(self.team.last!.weapon.hit)")
    }
        
        
    //donner un Nom à son Guerrier
    func nameWar() {
        
        print("Choisissez un nom pour le guerrier")
        if let userClasseNameChoice = readLine() {
            self.team.last!.name = userClasseNameChoice
            print("Votre guerrier s'appelle : \(self.team.last!.name)")
        }
        
    }
        
        
    //donner un Nom à son Mage
    func nameWizard() {
        
        print("Choisissez un nom pour le mage")
        if let userClasseNameChoice = readLine() {
            self.team.last!.name = userClasseNameChoice
            print("Votre mage s'appelle : \(self.team.last!.name)")
        }
        
    }
        
        
    //donner un Nom à son Archer
    func nameArchery() {
        
        print("Choisissez un nom pour l'acher")
        if let userClasseNameChoice = readLine() {
            self.team.last!.name = userClasseNameChoice
            print("Votre mage s'appelle : \(self.team.last!.name)")
        }
        
    }
}
