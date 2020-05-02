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
    
// Combat
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

