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
    
    // Pourquoi ne pas faire deux classes : PlayerOne et PlayerTwo Et override les méthodes de Player() ?
    
    //PlayerOne
    
    
    
    public func namePlayerOne() {
        hPrint()
        print("Comment s'appelle le joueur ?")
        if let userName = readLine() {
            self.name = userName
        }
        print("Bienvenue \(playerOne.name) !")
    }
    
    
    
    
    
    
    public func addWarToTeam() {
        hPrint()
        let war = War(name: "", weapon: Sword(name: "Epe", hit: 10), life:
            150,firstName: "Guerrier")
        playerOne.team.insert(war, at: 0)
        print("Vous avez ajouté un \(war.firstName) à votre équipe !"
            + "\n \(war.weapon.name)"
            + "\n \(war.weapon.hit)")
    }
    
    
    public func addWizardToTeam() {
        hPrint()
        let wizard = Wizard(name: "", weapon: Wand(name: "Baton",hit: 15),
                            life: 125,firstName: "Mage")
        playerOne.team.insert(wizard, at: 1)
        print("Vous avez ajouté un \(wizard.firstName) à votre équipe !"
            + "\n Son arme : \(wizard.weapon.name)"
            + "\n met \(wizard.weapon.hit) points de dégats.")
    }
    
    
    public func addArcheryToTeam() {
        hPrint()
        let archery = Archery(name: "", weapon: Bow(name: "Arc", hit: 20),
                              life: 100,firstName: "Archer")
        playerOne.team.insert(archery, at: 2)
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
        hPrint()
    }
    
    
    func nameWizard() {
        hPrint()
        print("Choisissez un nom pour le mage")
        if let userClasseNameChoice = readLine() {
            playerOne.team[1].name = userClasseNameChoice
            print("Votre mage s'appelle : \(playerOne.team[1].name)")
        }
        hPrint()
    }
    
    
    func nameArchery() {
        hPrint()
        print("Choisissez un nom pour l'acher")
        if let userClasseNameChoice = readLine() {
            playerOne.team[2].name = userClasseNameChoice
            print("Votre mage s'appelle : \(playerOne.team[2].name)")
        }
        hPrint()
    }
    
    
    public func createCompleteTeamForPlayerOne() {
        hPrint()
        print("Choisissez 3 Personnages !")
        addClassePlayerOne()
    }
    
    
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
        printInfosTeamName()
    }
    
    
    func printInfosTeamName() {
        hPrint()
        print("Mon équipe se compose de :")
        for name in playerOne.team {
            print(name.name)
            print(name.firstName)
            hPrint()
        }
    }
    
    
    //PlayerTwo
    
    public func namePlayerTwo() {
        hPrint()
        print("Comment s'appelle le Joueur 2 ?")
        if let userName = readLine() {
            playerTwo.name = userName
        }
        print("Bienvenue \(playerTwo.name) !")
    }
    
    
    public func addWarToTeamTwo() {
        hPrint()
        let war = War(name: "", weapon: Sword(name: "Epe", hit: 10), life:
            150,firstName: "Guerrier")
        playerTwo.team.insert(war, at: 0)
        print("Vous avez ajouté un \(war.firstName) à votre équipe !"
            + "\n \(war.weapon.name)"
            + "\n \(war.weapon.hit)")
    }
    
    
    public func addWizardToTeamTwo() {
        hPrint()
        let wizard = Wizard(name: "", weapon: Wand(name: "Baton",hit: 15),
                            life: 125,firstName: "Mage")
        playerTwo.team.insert(wizard, at: 1)
        print("Vous avez ajouté un \(wizard.firstName) à votre équipe !"
            + "\n Son arme : \(wizard.weapon.name)"
            + "\n met \(wizard.weapon.hit) points de dégats.")
    }
    
    
    public func addArcheryToTeamTwo() {
        hPrint()
        let archery = Archery(name: "", weapon: Bow(name: "Arc", hit: 20),
                              life: 100,firstName: "Archer")
        playerTwo.team.insert(archery, at: 2)
        print("Vous avez ajouté un \(archery.firstName) à votre équipe !"
            + "\n \(archery.weapon.name)"
            + "\n \(archery.weapon.hit)")
    }
    
    
    func nameWarTwo() {
        hPrint()
        print("Choisissez un nom pour le guerrier")
        if let userClasseNameChoice = readLine() {
            playerTwo.team[0].name = userClasseNameChoice
            print("Votre guerrier s'appelle : \(playerTwo.team[0].name)")
        }
        hPrint()
    }
    
    
    func nameWizardTwo() {
        hPrint()
        print("Choisissez un nom pour le mage")
        if let userClasseNameChoice = readLine() {
            playerTwo.team[1].name = userClasseNameChoice
            print("Votre mage s'appelle : \(playerTwo.team[1].name)")
        }
        hPrint()
    }
    
    
    func nameArcheryTwo() {
        hPrint()
        print("Choisissez un nom pour l'acher")
        if let userClasseNameChoice = readLine() {
            playerTwo.team[2].name = userClasseNameChoice
            print("Votre mage s'appelle : \(playerTwo.team[2].name)")
        }
        hPrint()
    }
    
    
    public func createCompleteTeamForPlayerTwo() {
        hPrint()
        print("Choisissez 3 Personnages !")
        addClassePlayerTwo()
    }
    
    
    public func addClassePlayerTwo() {
        hPrint()
    while playerTwo.team.count < 3 {
        print("Sélectionner une classe à ajouter dans votre équipe !"
            + "\n 1 - Guerrier"
            + "\n 2 - Mage"
            + "\n 3 - Archer")
        if let userChoiceCase = readLine() {
            switch userChoiceCase {
            case "1":
                addWarToTeamTwo()
                nameWarTwo()
            case "2":
                addWizardToTeamTwo()
                nameWizardTwo()
            case "3":
                addArcheryToTeamTwo()
                nameArcheryTwo()
            default:
                print("Je n'ai pas compris")
            }
        }
        }
        printInfosTeamName()
    }
    
    
    func printInfosTeamNameTwo() {
        hPrint()
        print("Mon équipe se compose de :")
        for name in playerTwo.team {
            print(name.name)
            print(name.firstName)
            hPrint()
        }
    }
}

