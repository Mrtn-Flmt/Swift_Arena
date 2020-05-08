//
//  Games.swift
//  Swift_Arena
//
//  Created by Martin Flament on 30/04/2020.
//  Copyright © 2020 Martin Flament. All rights reserved.
//

import Foundation


public func hPrint() { 
    print("----------------------------------")
}


public func petitHprint() {
    print("-   -   -")
}


public func uneLigne() {
    print("")
}


public func deuxLigne() {
    print(""
    + "\n")
}


public func printOposition() {
    print("L'équipe oppose :"
        + "\n"
        + "\n joueur 1 : \(playerOne.name)"
        + "\n"
        + "\n \(playerOne.team[0].name)"
        + "\n \(playerOne.team[1].name)"
        + "\n \(playerOne.team[2].name)"
        + "\n"
        + "\n"
        + "\n vs"
        + "\n"
        + "\n"
        + "\n joueur 2 \(playerTwo.name)"
        + "\n"
        + "\n' \(playerTwo.team[0].name)"
        + "\n \(playerTwo.team[1].name)"
        + "\n \(playerTwo.team[2].name)"
        + "\n"
    )
}
