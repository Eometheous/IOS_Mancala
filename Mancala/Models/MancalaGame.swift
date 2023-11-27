//
//  MancalaGame.swift
//  Mancala
//
//  Created by Jonathan Thomas on 11/27/23.
//

import Foundation

class MancalaGame {
    var model: Model
    
    var isPlayerBTurn = true
    var isGameStarted = false
    
    
    init(model: Model) {
        self.model = model
    }
    
    func updatePlayersTurn() {
        isPlayerBTurn = !isPlayerBTurn
    }
    
    func setPlayersTurn(playersTurn: Bool) {
        isPlayerBTurn = playersTurn
    }
}
