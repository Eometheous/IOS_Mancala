//
//  ContentView.swift
//  Mancala
//
//  Created by Jonathan Thomas on 11/20/23.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        HStack {
            Color.pit
            VStack {
                Color.pit
                Color.pit
            }
            VStack {
                Color.pit
                Color.pit
            }
            VStack {
                Color.pit
                Color.pit
            }
            VStack {
                Color.pit
                Color.pit
            }
            VStack {
                Color.pit
                Color.pit
            }
            VStack {
                Color.pit
                Color.pit
            }
            Color.pit
        }
        .padding()
        .background(Color.board)
    }
}

#Preview {
    GameView()
}
