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
        hPrint()
        print("Comment s'appelle le Joueur 1 ?")
        if let userName = readLine() {
            playerOne.name = userName
        }
        print("Bienvenue \(playerOne.name) !")
    }
    
    
    public func namePlayerTwo() {
        hPrint()
        print("Comment s'appelle le Joueur 2 ?")
        if let userName = readLine() {
            playerTwo.name = userName
        }
        print("Bienvenue \(playerTwo.name) !")
    }
    
    
    public func addWarToTeam() {
        hPrint()
        let war = War(name: "", weapon: Sword(name: "Epe", hit: 10), life:
            150,firstName: "Guerrier")
        playerOne.team.append(war)
        print("Vous avez ajouté un \(war.firstName) à votre équipe !"
            + "\n \(war.weapon.name)"
            + "\n \(war.weapon.hit)")
    }
    
    
    public func addWizardToTeam() {
        hPrint()
        let wizard = Wizard(name: "", weapon: Wand(name: "Baton",hit: 15),
                            life: 125,firstName: "Mage")
        playerOne.team.append(wizard)
        print("Vous avez ajouté un \(wizard.firstName) à votre équipe !"
            + "\n Son arme : \(wizard.weapon.name)"
            + "\n met \(wizard.weapon.hit) points de dégats.")
    }
    
    
    public func addArcheryToTeam() {
        hPrint()
        let archery = Archery(name: "", weapon: Bow(name: "Arc", hit: 20),
                              life: 100,firstName: "Archer")
        playerOne.team.append(archery)
        print("Vous avez ajouté un \(archery.firstName) à votre équipe !"
            + "\n \(archery.weapon.name)"
            + "\n \(archery.weapon.hit)")
    }
    
    
    func nameWar() {
        hPrint()
        print("Choisissez un nom pour le guerrier")
        if let userClasseNameChoice = readLine() {
            playerOne.team[0].name = userClasseNameChoice
            print("Votre guerrier s'appelle : \(playerOne.team[0].name)")
        }
    }
    
    
    func nameWizard() {
        hPrint()
        print("Choisissez un nom pour le mage")
        if let userClasseNameChoice = readLine() {
            playerOne.team.last!.name = userClasseNameChoice
            print("Votre mage s'appelle : \(playerOne.team.last!.name)")
        }
    }
    
    
    func nameArchery() {
        hPrint()
        print("Choisissez un nom pour l'acher")
        if let userClasseNameChoice = readLine() {
            playerOne.team[0].name = userClasseNameChoice
            print("Votre mage s'appelle : \(playerOne.team[0].name)")
        }
    }
    
    
    // Ici ça pose problème à cause de l'index. -> problème avec les 3 méthode nameClasse au dessus
    public func createCompleteTeamForPlayerOne() {
        hPrint()
        print("Choisissez 3 Personnages !")
        addClassePlayerOne()
        
    }
    
    //-   -   -   -   -   -   -   -   -   -   -
    
    
    public func addClassePlayerOne() {
        hPrint()
    while playerOne.team.count < 3 {
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
            
        }
    }

