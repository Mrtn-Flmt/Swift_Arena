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
    playerOne.createCompleteTeam()
    
    // Le joueur 2
    playerTwo.namePlayerTwo()
    playerTwo.createCompleteTeam()

    
    print("Le combat oposera \(playerOne.name) vs \(playerTwo.name)")
    print(playerOne.name + " possède 3 classes :"
        + "\n \(playerOne.team[0].name)"
        + "\n \(playerOne.team[1].name)"
        + "\n \(playerOne.team[2].name)")
    print("La suite en développement")
}
