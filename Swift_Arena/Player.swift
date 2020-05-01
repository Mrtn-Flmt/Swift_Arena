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
    
    
    public func namePlayerOne() {
        print("Comment s'appelle le Joueur 1 ?")
        if let userName = readLine() {
            playerOne.name = userName
        }
        print("Bienvenue \(playerOne.name)")
    }
    
    public func addWarToTeam() {
        let war = War(name: "Guerrier", weapon: Sword(name: "Epe", hit: 10), life:
            150)
       self.team.append(war)
        print("Vous avez ajouté un \(war.name) à votre équipe !"
            + "\n \(war.weapon.name)"
            + "\n \(war.weapon.hit)")
    }
    
    public func addWizardToTeam() {
        let wizard = Wizard(name: "Mage", weapon: Wand(name: "Baton",hit: 15),
                            life: 125)
        self.team.append(wizard)
        print("Vous avez ajouté un \(wizard.name) à votre équipe !"
            + "\n \(wizard.weapon.name)"
            + "\n \(wizard.weapon.hit)")
    }
    
    public func addArcheryToTeam() {
        let archery = Archery(name: "Archer", weapon: Bow(name: "Arc", hit: 20),
                              life: 100)
        self.team.append(archery)
        print("Vous avez ajouté un \(archery.name) à votre équipe !"
            + "\n \(archery.weapon.name)"
            + "\n \(archery.weapon.hit)")
    }
    
    public func createCompleteTeam() {
        print("Choisissez 3 Personnages !")
        while team.count < 3 {
            addClasse()
        }
        print("Vous avez dans votre équipe :" + playerOne.team[0].name + playerOne.team[1].name + playerOne.team[2].name)
        print(playerOne.team[0].name + " combat avec " + playerOne.team[0].weapon.name)
    }
    
    
    public func addClasse() {
        print("Sélectionner une classe à ajouter dans votre équipe !"
            + "\n 1 - Guerrier"
            + "\n 2 - Mage"
            + "\n 3 - Archer")
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
    }
    
    func nameWar() {
        print("Choisissez un nom pour le guerrier")
        if let userClasseNameChoice = readLine() {
            playerOne.team[0].name = userClasseNameChoice
            print("Votre guerrier s'appelle : \(playerOne.team[0].name)")
        }
    }
    
    func nameWizard() {
        print("Choisissez un nom pour le mage")
        
        if let userClasseNameChoice = readLine() {
            
            playerOne.team[0].name = userClasseNameChoice
            
            print("Votre mage s'appelle : \(playerOne.team[0].name)")
            
        }
    }
    
        func nameArchery() {
            print("Choisissez un nom pour l'acher")
            if let userClasseNameChoice = readLine() {
                playerOne.team[0].name = userClasseNameChoice
                print("Votre mage s'appelle : \(playerOne.team[0].name)")
            }
    }
}
