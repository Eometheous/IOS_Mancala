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
        for i in 0...13 {
            if (i != 0 && i != 7) {
                dataList[i] = numberOfStartingBeads
            }
        }
    }
    
    func update(position: Int, newValue: Int) {
        dataList[position] = newValue
    }
    
    func get(position: Int) -> Int{
        return dataList[position]
    }
    
    func increment(position: Int) {
        dataList[position] += 1
    }
    
    func add(position: Int, amount: Int) {
        dataList[position] += amount
    }
}

extension Model {
    static let sampleData = Model(numberOfStartingBeads: 4)
}
