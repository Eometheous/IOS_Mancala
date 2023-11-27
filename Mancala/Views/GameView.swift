//
//  ContentView.swift
//  Mancala
//
//  Created by Jonathan Thomas on 11/20/23.
//

import SwiftUI

struct GameView: View {
    var model: Model
    
    var body: some View {
        HStack {
            Text("\(model.get(position: 7))").font(.largeTitle)
            VStack {
                Text("\(model.get(position: 6))").font(.largeTitle)
                Text("\(model.get(position: 8))").font(.largeTitle)
            }
            VStack {
                Text("\(model.get(position: 5))").font(.largeTitle)
                Text("\(model.get(position: 9))").font(.largeTitle)
            }
            VStack {
                Text("\(model.get(position: 4))").font(.largeTitle)
                Text("\(model.get(position: 10))").font(.largeTitle)
            }
            VStack {
                Text("\(model.get(position: 3))").font(.largeTitle)
                Text("\(model.get(position: 11))").font(.largeTitle)
            }
            VStack {
                Text("\(model.get(position: 2))").font(.largeTitle)
                Text("\(model.get(position: 12))").font(.largeTitle)
            }
            VStack {
                Text("\(model.get(position: 1))").font(.largeTitle)
                Text("\(model.get(position: 13))").font(.largeTitle)
            }
            Text("\(model.get(position: 0))").font(.largeTitle)
        }
        .padding()
        .background(Color.board)
    }
}

#Preview {
    GameView(model: Model.sampleData)
}
