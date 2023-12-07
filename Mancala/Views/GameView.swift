//
//  ContentView.swift
//  Mancala
//
//  Created by Jonathan Thomas on 11/20/23.
//

import SwiftUI

struct GameView: View {
    var game: MancalaGame
    
    // this is very cringe, but it works :/
    @State private var pit0 = MancalaGame.sampleGame.beads.get(position: 0)
    @State private var pit1 = MancalaGame.sampleGame.beads.get(position: 1)
    @State private var pit2 = MancalaGame.sampleGame.beads.get(position: 2)
    @State private var pit3 = MancalaGame.sampleGame.beads.get(position: 3)
    @State private var pit4 = MancalaGame.sampleGame.beads.get(position: 4)
    @State private var pit5 = MancalaGame.sampleGame.beads.get(position: 5)
    @State private var pit6 = MancalaGame.sampleGame.beads.get(position: 6)
    @State private var pit7 = MancalaGame.sampleGame.beads.get(position: 7)
    @State private var pit8 = MancalaGame.sampleGame.beads.get(position: 8)
    @State private var pit9 = MancalaGame.sampleGame.beads.get(position: 9)
    @State private var pit10 = MancalaGame.sampleGame.beads.get(position: 10)
    @State private var pit11 = MancalaGame.sampleGame.beads.get(position: 11)
    @State private var pit12 = MancalaGame.sampleGame.beads.get(position: 12)
    @State private var pit13 = MancalaGame.sampleGame.beads.get(position: 13)
    
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
                    Text("\(pit7)")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                }
                Spacer()
                VStack {
                    Text("B6")
                    Text("\(pit6)")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 6) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 6)
                                updateView()
                            }
                        }
                    Text("\(pit8)")
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
                    Text("\(pit5)")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 5) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 5)
                                updateView()
                            }
                        }
                    Text("\(pit9)")
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
                    Text("\(pit4)")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 4) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 4)
                                updateView()
                            }
                        }
                    Text("\(pit10)")
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
                    Text("\(pit3)")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 3) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 3)
                                updateView()
                            }
                        }
                    Text("\(pit11)")
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
                    Text("\(pit2)")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 2) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 2)
                                updateView()
                            }
                        }
                    Text("\(pit12)")
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
                    Text("\(pit1)")
                        .font(.largeTitle)
                        .padding(30)
                        .background(theme.pitColor)
                        .onTapGesture {
                            if (game.beads.get(position: 1) != 0 && game.isPlayerBTurn) {
                                game.pickupBeadsAt(pit: 1)
                                updateView()
                            }
                        }
                    Text("\(pit13)")
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
                    Text("\(game.beads.get(position: 0))")
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
        pit0 = game.beads.get(position: 0)
        pit1 = game.beads.get(position: 1)
        pit2 = game.beads.get(position: 2)
        pit3 = game.beads.get(position: 3)
        pit4 = game.beads.get(position: 4)
        pit5 = game.beads.get(position: 5)
        pit6 = game.beads.get(position: 6)
        pit7 = game.beads.get(position: 7)
        pit8 = game.beads.get(position: 8)
        pit9 = game.beads.get(position: 9)
        pit10 = game.beads.get(position: 10)
        pit11 = game.beads.get(position: 11)
        pit12 = game.beads.get(position: 12)
        pit13 = game.beads.get(position: 13)
    }
}

#Preview {
    GameView(game: MancalaGame.sampleGame)
}
