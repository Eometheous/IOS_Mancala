//
//  MancalaApp.swift
//  Mancala
//
//  Created by Jonathan Thomas on 11/20/23.
//

import SwiftUI

@main
struct MancalaApp: App {
    var game = MancalaGame(model: Model(numberOfStartingBeads: 0))
    
    var body: some Scene {
        WindowGroup {
            GameView(game: MancalaGame.sampleGame)
        }
    }
}
