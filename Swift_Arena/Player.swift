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
        hPrint()
        if let userName = readLine() {
            self.name = userName
        }
        hPrint()
        uneLigne()
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
            print ("1 - 🛡 Guerrier 🛡"
                + "\n2 - 🧙‍♂️ Mage 🧙‍♂️"
                + "\n3 - 🏹 Archer 🏹")
            uneLigne()
            hPrint()
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
        let war = Warrior(name: "", weapon: Sword(name: "⚔️ Epe ⚔️", hit: 10), life:
            150,firstName: "🛡 Guerrier 🛡")
        self.team.append(war)
        nameCharacter()
        print("Vous avez ajouté un \(self.team.last!.firstName) à votre équipe !")
        uneLigne()
        print("l'arme du \(self.team.last!.firstName) est :"
        + "\n\(self.team.last!.weapon.name)"
        + "\n\(self.team.last!.weapon.hit) points de dégats")
    }
        
        
    //ajouter un Mage à son équipe + appel de la méthode nommer
    func addWizardToTeam() {
        let wizard = Wizard(name: "", weapon: Wand(name: "🔥 Baton 🔥",hit: 15),
                            life: 125,firstName: "🧙‍♂️ Mage 🧙‍♂️")
        self.team.append(wizard)
        nameCharacter()
        print("🧙‍♂️ Vous avez ajouté un \(self.team.last!.firstName) à votre équipe ! 🧙‍♂️")
        uneLigne()
        print("l'arme du \(self.team.last!.firstName) est :"
        + "\n\(self.team.last!.weapon.name)"
        + "\n\(self.team.last!.weapon.hit) points de dégats")
        uneLigne()
    }
        
        
    //ajouter un Archer à son équipe + appel de la méthode nommer
    func addArcheryToTeam() {
        let archery = Archery(name: "", weapon: Bow(name: "🏹 Arc 🏹", hit: 20),
                              life: 100,firstName: "🎯 Archer 🎯")
        self.team.append(archery)
        nameCharacter()
        print("🏹 Vous avez ajouté un \(self.team.last!.firstName) à votre équipe ! 🏹")
            uneLigne()
        print("l'arme du \(self.team.last!.firstName) est :"
                + "\n\(self.team.last!.weapon.name)"
                + "\n\(self.team.last!.weapon.hit) points de dégats")
            uneLigne()
    }
        
        
    //Nommer son character
    func nameCharacter() {
        hPrint()
        uneLigne()
        print("Vous souhaitez ajouter un \(self.team.last!.firstName)")
        uneLigne()
        print("Donnez lui un nom pour l'ajouter à votre équipe :")
        uneLigne()
        hPrint()
        if let userClasseNameChoice = readLine() {
            self.team.last!.name = userClasseNameChoice
            hPrint()
            uneLigne()
        }
    }
    
    
    //action Player One
    public func selectAction() {
        print("\(self.name) Selectionne ?"
            + "\n1 - \(self.team[0].firstName)//\(self.team[0].name)"
            + "\n1 - \(self.team[1].firstName)//\(self.team[1].name)"
            + "\n1 - \(self.team[2].firstName)//\(self.team[2].name)")
        if let selectAction = readLine() {
            switch selectAction {
            case "1":
                actionWar()
            case "2":
                print("Qu'est ce que \(self.team[1].firstName) doit faire ?")
            case "3":
                print("Qu'est ce que \(self.team[2].firstName) doit faire ?")
            default:
                print("Je n'ai pas compris.")
            }
        }
    }
    
    
    public func actionWar() {
        print("Qu'est ce que \(self.team[0].firstName) doit faire ?"
            + "\n1 - Attaquer"
            + "\n2 - soigner"
            + "\n3 - Envouter son arme")
        if let actionWarChoice = readLine() {
            switch actionWarChoice {
            case "1":
                print("")
            case "2":
                print("\(self.team[0].name) soigne qui ?")
                
            case "3":
                print("\(self.team[0].name) a envouté son arme")
                self.team[0].weapon.hit += 5
            default:
                print("Je n'ai pas compris.")
            }
        }
    }
    
    
    
    
    public func whoWarAttak() {
        print("\(self.team[0].name) Attaque qui ?")     //Comment récupérer la classe lors du choix de l'utilisateur ?
        
        if let warAttakChoice = readLine() {
            switch warAttakChoice {
            case "1":
                print("war attaque Le \(playerTwo.team[0])")
            default:
                print("")
            }
            
        }
        
    }
    
}
