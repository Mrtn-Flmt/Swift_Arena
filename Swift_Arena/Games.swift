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
    
    
    
    //Trouver un moyen d'appeler l'information autrement que par l'index
    print("La team de " + playerOne.name + " compose se de :"
        + "\n   \(playerOne.team.last!.firstName) : \(playerOne.team.last!.name)"
        + "\n   \(playerOne.team[1].firstName) : \(playerOne.team[1].name)"
        + "\n   \(playerOne.team[0].firstName) : \(playerOne.team[0].name)")
    
    // Ici vient le combat.
    // ...
}

public func hPrint() {
    print("----------------------------------")
}

