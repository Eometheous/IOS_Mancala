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
    var isGameOver = false;
    
    let PLAYER_A_MANCALA = 0
    let PLAYER_B_MANCALA = 7
    
    init(model: Model) {
        self.beads = model
    }
    
    func pickupBeadsAt(pit: Int) {
        if isGameStarted {
            let numberOfBeadsPickedUp = beads.get(position: pit)
            beads.update(position: pit, newValue: 0)
            placeBeadsInPits(startingPit: pit, startingNumOfBeads: numberOfBeadsPickedUp)
            isPlayerBTurn.toggle()
        }
    }
    
    func startNewGame(numberOfStartingBeads: Int) {
        beads = Model(numberOfStartingBeads: numberOfStartingBeads)
        isGameStarted = true
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
                currentPit = PLAYER_A_MANCALA
                if !isPlayerBTurn {
                    beads.increment(position: PLAYER_A_MANCALA)
                    numOfBeads -= 1
                    if numOfBeads == 0 {
                        isPlayerBTurn.toggle();
                    }
                }
                currentPit += 1
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
        checkForVictory()
    }
    
    func gameStatus() -> String {
        if (isGameStarted) {
            if isPlayerBTurn {
                return "Player B's Turn"
            }
            else {
                return "Player A's Turn"
            }
        }
        else if isGameOver {
            if beads.get(position: PLAYER_A_MANCALA) > beads.get(position: PLAYER_B_MANCALA) {
                return "Player A won!"
            }
            else if beads.get(position: PLAYER_A_MANCALA) < beads.get(position: PLAYER_B_MANCALA) {
                return "Player B won!"
            }
            else {
                return "Tie Game!"
            }
        }
        else {
            return "Mancala"
        }
    }
    
    func checkForVictory() {
        if isGameStarted {
            
            var playerAPitEmpty = true, playerBPitEmpty = true
            
            for i in 1...6 {
                if beads.get(position: i) != 0 {
                    playerBPitEmpty = false
                }
            }
            
            for i in 8...13 {
                if beads.get(position: i) != 0 {
                    playerAPitEmpty = false
                }
            }
            
            if playerAPitEmpty || playerBPitEmpty {
                takeAllOpponentsBeads(isPlayerAEmpty: playerAPitEmpty)
                isGameOver = true
                isGameStarted = false
            }
        }
    }
    
    private func takeAllOpponentsBeads(isPlayerAEmpty: Bool) {
        if isPlayerAEmpty {
            for i in 1...6 {
                beads.add(position: PLAYER_B_MANCALA, amount: beads.get(position: i))
                beads.update(position: i, newValue: 0)
            }
        }
        else {
            for i in 8...13 {
                beads.add(position: PLAYER_A_MANCALA, amount: beads.get(position: i))
                beads.update(position: i, newValue: 0)
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
    static let sampleGame = MancalaGame(model: Model(numberOfStartingBeads: 0))
}
