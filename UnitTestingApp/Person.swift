//
//  Person.swift
//  UnitTestingApp
//
//  Created by Nikolay Trofimov on 13.01.2023.
//

import Foundation

class Person {
    let name: String
    var surname: String?
    let phone: String
    private(set) var date: Date
    private(set) var image: Data?
    
    init(name: String, phone: String, image: Data? = nil) {
        self.name = name
        self.phone = phone
        self.image = image
        date = Date()
    }
    
    init(name: String, surname: String, phone: String, image: Data? = nil) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.image = image
        date = Date()
    }
}
