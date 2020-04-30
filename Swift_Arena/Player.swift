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
    
    
    
    
    
    
    
    
    public func addWarToTeam() {// Pourquoi dois je le reinitialiser ?
        let war = War(name: "Guerrier", weapon: Sword(name: "Epe", hit: 10), life: 150)
       
        
        
        
        
       self.team.append(war)
        
        print("Vous avez ajouté un \(war.name) à votre équipe !"
            + "\n \(war.weapon.name)"
            + "\n \(war.weapon.hit)")
    }
    
    
    
    
    public func addWizardToTeam() {
        let wizard = Wizard(name: "Mage", weapon: Wand(name: "Baton", hit: 15), life: 125)
    
        self.team.append(wizard)
        print("Vous avez ajouté un \(wizard.name) à votre équipe !"
        + "\n \(wizard.weapon.name)"
        + "\n \(wizard.weapon.hit)")
    }
    
    
    
    
    public func addArcheryToTeam() {
        let archery = Archery(name: "Archer", weapon: Bow(name: "Arc", hit: 20), life: 100)
        
        self.team.append(archery)
        print("Vous avez ajouté un \(archery.name) à votre équipe !"
        + "\n \(archery.weapon.name)"
        + "\n \(archery.weapon.hit)")
        
    }
    
    
    
    public func removeClassPlayer1() {
        
        
        print("Vous avez supprimer les classes de votre équipe."
        + "\n Vous devez reselectionner 3 Personnages.")
        playerOne.team.removeAll()
    }
    
    
    public func removeClassPlayer2() {
        print("Annuler le choix de \(playerTwo.name)")
        playerTwo.team.removeAll()
    }
    
    
    
    
    
    
    
    public func createCompleteTeam() {
        
        while team.count < 3 {
            addClasse()
            
        
        }
    
    }
    
    
    
    
    
    
    public func addClasse() {
       
        print("Sélectionner une classe à ajouter dans votre équipe !"
            + "\n 1 - Guerrier"
            + "\n 2 - Mage"
            + "\n 3 - Archer"
            + "\n ---------------------------")
            
        
        if let userChoiceCase = readLine() {
            switch userChoiceCase {
            case "1":
                print("Vous avez ajouter un Guerrier !"
                + "\n ---------------------------")
                addWarToTeam()
                
                
            case "2":
                print("Vous avez ajouter un Mage !"
                + "\n ---------------------------")
                addWizardToTeam()
                
            case "3":
                print("Vous avez ajouté un Archer !"
                + "\n ---------------------------")
                addArcheryToTeam()
           
            default:
                print("Je n'ai pas compris"
                + "\n ---------------------------")
            }
            
            
            }
        
        
    }
}
