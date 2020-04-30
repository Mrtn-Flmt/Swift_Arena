//
//  Games.swift
//  Swift_Arena
//
//  Created by Martin Flament on 30/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation

public var playerOne = Player(name: "", team: [])
public var playerTwo = Player(name: "", team: [])

public func startGames() {
    // Le joueur 1

    print("Comment s'appelle le Joueur 1 ?")

    



    if let userName = readLine() {
        playerOne.name = userName
    }
    print("Le nom du joueur 1 est \(playerOne.name)")
    print("Bienvenue \(playerOne.name)")










    playerOne.createCompleteTeam()
    print("Vous avez dans votre équipe :")


    //ici ça pose un problème
    //-----------------------------
    //-----------------------------//
    print(playerOne.team[0])
    print(playerOne.team[1])
    print(playerOne.team[2])











    // Le joueur 2

    print("Comment s'appelle le Joueur 2 ?")

    if let userName = readLine() {
        playerTwo.name = userName
    }
    print("Le nom du joueur 2 est \(playerTwo.name)")


    print("Bienvenue \(playerTwo.name)")



    playerTwo.createCompleteTeam()



    print("Vous avez dans votre équipe :")
    print(playerTwo.team[0])
    print(playerTwo.team[1])
    print(playerTwo.team[2])




    print("Le combat oposera \(playerOne.name) vs \(playerTwo.name)")


}
