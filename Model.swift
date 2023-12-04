//
//  MancalaGame.swift
//  Mancala
//
//  Created by Jonathan Thomas on 11/25/23.
//

import Foundation

class Model {
    var dataList: Array<Int>
    
    init(numberOfStartingBeads: Int) {
        dataList = Array(repeating: 0, count: 14)
        for i in 0...14 {
            if (i != 0 && i != 7) {
                dataList.insert(numberOfStartingBeads, at: i)
            }
        }
    }
    
    func update(position: Int, newValue: Int) {
        dataList[position] = newValue
    }
    
    func get(position: Int) -> Int{
        return dataList[position]
    }
}

extension Model {
    static let sampleData = Model(numberOfStartingBeads: 4)
}
