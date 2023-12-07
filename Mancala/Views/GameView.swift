//
//  ContentView.swift
//  Mancala
//
//  Created by Jonathan Thomas on 11/20/23.
//

import SwiftUI

struct GameView: View {
    var game: MancalaGame
    
    @State private var pits = Array(repeating: 0, count: 14)
    
    @State private var selectIfBGoesFirst = false
    @State private var selectStartingNumberOfBeads = 2
    
    @State private var theme = Theme.defaultBoard
    
    var body: some View {
        VStack {
            Text(game.gameStatus())
                .font(.largeTitle)
                
                
            HStack {
                VStack {
                    Text("B")
                    Text("\(pits[7])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                }
                Spacer()
                VStack {
                    Text("B6")
                    Text("\(pits[6])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 6) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 6)
                                updateView()
                            }
                        }
                    Text("\(pits[8])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 8) != 0 && !game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 8)
                                updateView()
                            }
                        }
                    Text("A1")
                }
                Spacer()
                VStack {
                    Text("B5")
                    Text("\(pits[5])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 5) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 5)
                                updateView()
                            }
                        }
                    Text("\(pits[9])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 9) != 0 && !game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 9)
                                updateView()
                            }
                        }
                    Text("A2")
                }
                Spacer()
                VStack {
                    Text("B4")
                    Text("\(pits[4])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 4) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 4)
                                updateView()
                            }
                        }
                    Text("\(pits[10])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 10) != 0 && !game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 10)
                                updateView()
                            }
                        }
                    Text("A3")
                }
                Spacer()
                VStack {
                    Text("B3")
                    Text("\(pits[3])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 3) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 3)
                                updateView()
                            }
                        }
                    Text("\(pits[11])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 11) != 0 && !game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 11)
                                updateView()
                            }
                        }
                    Text("A4")
                }
                Spacer()
                VStack {
                    Text("B2")
                    Text("\(pits[2])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 2) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 2)
                                updateView()
                            }
                        }
                    Text("\(pits[12])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 12) != 0 && !game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 12)
                                updateView()
                            }
                        }
                    Text("A5")
                }
                Spacer()
                VStack {
                    Text("B1")
                    Text("\(pits[1])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 1) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 1)
                                updateView()
                            }
                        }
                    Text("\(pits[13])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 13) != 0 && !game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 13)
                                updateView()
                            }
                        }
                    Text("A6")
                }
                Spacer()
                VStack {
                    Text("\(pits[0])")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                    Text("A")
                }
            }
            Spacer()
            HStack {
                Picker (selection: $theme, label: Text("Pick Theme")) {
                    Text("Default").tag(Theme.defaultBoard)
                    Text("Kim Board").tag(Theme.kimBoard)
                    Text("Patriot Board").tag(Theme.patriotBoard)
                }.tint(theme.fontColor)
                
                Picker (selection: $selectIfBGoesFirst, label: Text("Who Goes First?")) {
                    Text("Player A First").tag(false)
                    Text("Player B First").tag(true)
                }.tint(theme.fontColor)
                
                Picker (selection: $selectStartingNumberOfBeads, label: Text("Starting Number of Beads")) {
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                }.tint(theme.fontColor)
                
                Button("Start New Game") {
                    game.isPlayerBTurn = selectIfBGoesFirst
                    game.startNewGame(numberOfStartingBeads: selectStartingNumberOfBeads)
                    updateView()
                }
                .foregroundStyle(theme.fontColor)
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity
        )
        .padding(20)
        .background(theme.boardColor)
        .foregroundStyle(theme.fontColor)
    }
    
    func updateView() {
        for i in 0...13 {
            pits[i] = game.beads.get(position: i)
        }
    }
}

#Preview {
    GameView(game: MancalaGame.sampleGame)
}
