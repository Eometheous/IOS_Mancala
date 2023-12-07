//
//  Theme.swift
//  Mancala
//
//  Created by Jonathan Thomas on 12/6/23.
//

import SwiftUI

enum Theme {
    case defaultBoard
    case kimBoard
    case patriotBoard
    
    var boardColor: Color {
        switch self {
        case .defaultBoard: return Color.defaultBoard
        case .kimBoard: return Color.kimBoard
        case .patriotBoard: return Color.patriotBoard
        }
    }
    
    var fontColor: Color {
        switch self {
        case .defaultBoard: return Color.defaultFont
        case .kimBoard: return Color.kimFont
        case .patriotBoard: return Color.patriotFont
        }
    }
    
    var pitColor: Color {
        switch self {
        case .defaultBoard: return Color.defaultPit
        case .kimBoard: return Color.kimPit
        case .patriotBoard: return Color.patriotPit
        }
    }
}
