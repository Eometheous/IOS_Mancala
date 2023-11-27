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
    
    let PLAYER_A_MANCALA = 0
    let PLAYER_B_MANCALA = 7
    
    init(model: Model) {
        self.model = model
    }
    
    func pickupBeadsAt(pit: Int) {
        var numberOfBeadsPickedUp = model.get(position: pit)
        model.update(position: pit, newValue: 0)
        placeBeadsInPits(startingPit: pit, startingNumOfBeads: numberOfBeadsPickedUp)
    }
    
    func placeBeadsInPits(startingPit: Int, startingNumOfBeads: Int) {
        var currentPit = startingPit
        var numOfBeads = startingNumOfBeads
        
        while numOfBeads > 0 {
            currentPit+=1
            
            if (currentPit == PLAYER_B_MANCALA && isPlayerBTurn) {
                model.update(position: PLAYER_B_MANCALA, newValue: model.get(position: PLAYER_B_MANCALA) + 1)
                numOfBeads-=1
            }
            else if (currentPit == PLAYER_A_MANCALA && !isPlayerBTurn) {
                model.update(position: PLAYER_A_MANCALA, newValue: model.get(position: PLAYER_A_MANCALA) + 1)
                numOfBeads-=1
            }
            if (numOfBeads > 0) {
                model.update(position: currentPit, newValue: model.get(position: currentPit) + 1)
            }
            numOfBeads-=1
        }
    }
    
    func updatePlayersTurn() {
        isPlayerBTurn = !isPlayerBTurn
    }
    
    func setPlayersTurn(playersTurn: Bool) {
        isPlayerBTurn = playersTurn
    }
}
