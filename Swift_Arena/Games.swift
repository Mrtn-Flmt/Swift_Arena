//
//  Games.swift
//  Swift_Arena
//
//  Created by Martin Flament on 30/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation








public func startGames() {
    
    
    playerOne.namePlayerOne()
    playerOne.createCompleteTeam()
    
    
    
    // Le joueur 2
    
    print("Comment s'appelle le Joueur 2 ?")

    if let userName = readLine() {
        
        playerTwo.name = userName
    
    }
    
    print("Le nom du joueur 2 est \(playerTwo.name)")

    print("Bienvenue \(playerTwo.name)")

    // Créer votre équipe
    
    playerTwo.createCompleteTeam()

    
    print("Le combat oposera \(playerOne.name) vs \(playerTwo.name)")
    
    print("La suite en développement")

}
