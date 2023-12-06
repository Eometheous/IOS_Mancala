//
//  MancalaGame.swift
//  Mancala
//
//  Created by Jonathan Thomas on 11/27/23.
//

import Foundation

class MancalaGame {
    var beads: Model
    
    var isPlayerBTurn = true
    var isGameStarted = false
    
    let PLAYER_A_MANCALA = 0
    let PLAYER_B_MANCALA = 7
    
    init(model: Model) {
        self.beads = model
    }
    
    func pickupBeadsAt(pit: Int) {
        let numberOfBeadsPickedUp = beads.get(position: pit)
        beads.update(position: pit, newValue: 0)
        placeBeadsInPits(startingPit: pit, startingNumOfBeads: numberOfBeadsPickedUp)
        isPlayerBTurn.toggle()
    }
    
    func placeBeadsInPits(startingPit: Int, startingNumOfBeads: Int) {
        var currentPit = startingPit
        var numOfBeads = startingNumOfBeads
        
        while numOfBeads > 0 {
            currentPit += 1
            if currentPit == PLAYER_B_MANCALA && isPlayerBTurn {
                beads.increment(position: PLAYER_B_MANCALA)
                numOfBeads -= 1
                currentPit += 1
                if numOfBeads == 0 {
                    isPlayerBTurn.toggle()
                }
            }
            else if currentPit == 14 {
                currentPit = 0
                if !isPlayerBTurn {
                    beads.increment(position: PLAYER_A_MANCALA)
                    numOfBeads -= 1
                    currentPit += 1
                    if numOfBeads == 0 {
                        isPlayerBTurn.toggle();
                    }
                }
            }
            if numOfBeads > 0 {
                beads.increment(position: currentPit)
                numOfBeads -= 1
            }
        }
        
        if beads.get(position: currentPit) == 1 {
            if (isPlayerBTurn && currentPit < PLAYER_B_MANCALA) || (!isPlayerBTurn && currentPit > PLAYER_B_MANCALA) {
                stealBeadsFromOtherPlayerAt(currentPit: oppositePitOf(pit: currentPit))
            }
        }
    }
    
    private func stealBeadsFromOtherPlayerAt(currentPit: Int) {
        let opponentsBeads = beads.get(position: currentPit) + 1
        
        if isPlayerBTurn {
            beads.add(position: PLAYER_B_MANCALA, amount: opponentsBeads)
        }
        else {
            beads.add(position: PLAYER_A_MANCALA, amount: opponentsBeads)
        }
        
        beads.update(position: currentPit, newValue: 0)
        beads.update(position: oppositePitOf(pit: currentPit), newValue: 0)
    }
    
    func oppositePitOf(pit: Int) -> Int {
        return 13 - pit + 1
    }
}

extension MancalaGame {
    static let sampleGame = MancalaGame(model: Model(numberOfStartingBeads: 4))
}
