//
//  Student.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import Foundation

struct Student {
    let id = UUID()
    let name: String
    let image: String
}

extension Student {
    static let MOCK_STUDENTS = [
        Student(name: "Fernanda", image: "fer"),
        Student(name: "Allan", image: "allan"),
        Student(name: "Cloe", image: "cloe")
    ]
}
