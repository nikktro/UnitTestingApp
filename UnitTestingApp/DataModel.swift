//
//  DataModel.swift
//  UnitTestingApp
//
//  Created by Nikolay Trofimov on 12.01.2023.
//

import Foundation

class DataModel {
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
    
    func greaterThanValue(x: Int, y: Int) -> Bool {
        x > y
    }
}

