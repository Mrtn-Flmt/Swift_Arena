//
//  Games.swift
//  Swift_Arena
//
//  Created by Martin Flament on 30/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

public func startGames() {
    
// Le joueur 1
    playerOne.namePlayerOne()
    playerOne.createCompleteTeamForPlayerOne()
    

// Le joueur 2
    playerTwo.namePlayerTwo()
    playerTwo.createCompleteTeamForPlayerTwo()

// stat des joueurs
    print("Le combat va opposer :"
        + "\n \(playerOne.name)")
    playerOne.printInfosTeamName()
    print("\n vs"
        + "\n \(playerTwo.name)")
    playerTwo.printInfosTeamNameTwo()
    
    
    
}


public func hPrint() { // Mettre les prints dans des enums ?
    print("----------------------------------")
}


public func P1attakP2() {
    print("Avec quel personnage attaquer ?")
    if let selectClass = readLine() {
        switch selectClass {
        case "1":
            print("Vous avez sélectionné le guerrier !")
            hPrint()
            
            
        case "2":
            print("Vous avez sélectionné le Mage !")
            hPrint()
            
        default:
            print("Je n'ai pas compris")
        }
    }
    
}


public func whoAttakP1VP2() {
    print("Qui voulez-vous attaquer ?"
        + "\n 1 - Attaquer le Guerrier de \(playerTwo.name)"
        + "\n 2 - Attaquer le Mage de \(playerTwo.name)"
        + "\n 2 - Attaquer l'archer de \(playerTwo.name)")
    
    //ici fonction selecFocus
    if let selectFocus = readLine() {
        switch selectFocus {
        case "1":
            attakWar1V2WithWar()
        default:
            print("...")
        }
    }
}


public func attakWar1V2WithWar() {
    print("\(playerOne.name) attaque \(playerTwo.name)")
    playerTwo.team[0].life -= playerOne.team[0].weapon.hit
    print("Il reste à \(playerTwo.team[0].name) de \(playerTwo.name)"
        + "\n \(playerTwo.team[0].life) pv")
}


public func attakWizard1V2WithWar() {
    print("\(playerOne.name) attaque \(playerTwo.name)")
    playerTwo.team[1].life -= playerOne.team[0].weapon.hit
    print("Il reste à \(playerTwo.team[0].name) de \(playerTwo.name)"
        + "\n \(playerTwo.team[1].life) pv")
}


public func attakArchery1V2WithWAR() {
    print("\(playerOne.name) attaque \(playerTwo.name)")
    playerTwo.team[2].life -= playerOne.team[0].weapon.hit
    print("Il reste à \(playerTwo.team[0].name) de \(playerTwo.name)"
        + "\n \(playerTwo.team[2].life) pv")
}


public func attakWar1V2WithArchery() {
    print("\(playerOne.name) attaque \(playerTwo.name)")
    playerTwo.team[1].life -= playerOne.team[0].weapon.hit
    print("Il reste à \(playerTwo.team[0].name) de \(playerTwo.name)"
        + "\n \(playerTwo.team[0].life) pv")
}












public func selectAction () {
    print("Quel action souhaitez-vous réaliser ?"
        + "\n 1 - Attaquer"
        + "\n 2 - Charger son arme")
    if let selectAction = readLine() {
        switch selectAction {
        case "1":
            print("Vous attaqué")
        case "2":
            print("Vous souhaitez charger votre arme ?")
            
        default:
            print("Je n'ai pas compris")
        }
    }
}


public func confirmAction() {
    print("Voulez-vous attaquer ?")
    if let confirmAction = readLine() {
        switch confirmAction {
        case "1":
            print("")
        default:
            print("Je n'ai pas compris")
        }
    }
}



public func selectAction2() {
    
}
