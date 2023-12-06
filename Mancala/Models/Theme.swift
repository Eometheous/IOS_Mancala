//
//  Theme.swift
//  Mancala
//
//  Created by Jonathan Thomas on 12/6/23.
//

import SwiftUI

enum Theme {
    case defaultBoard
    
    var boardColor: Color {
        switch self {
        case .defaultBoard: return Color.defaultBoard
        }
    }
    
    var fontColor: Color {
        switch self {
        case .defaultBoard: return Color.defaultFont
        }
    }
    
    var pitColor: Color {
        switch self {
        case .defaultBoard: return Color.defaultPit
        }
    }
}
