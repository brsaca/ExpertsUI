//
//  DayTime.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import Foundation

enum Category {
    case grow
    case connect
    case practice
    case tutorial
    
    var details: String {
        switch self {
        case .grow: return "Ask questions"
        case .connect: return "Start a conversation"
        case .practice: return "Let's do an example"
        case .tutorial: return "Clone a small project"
        }
    }
    
}

struct DayTime {
    let id = UUID()
    let hour: String
    let time: String
    let category: Category
}

extension DayTime {
    static let MOCK_DAYTIMES = [
        DayTime(hour: "7:00", time: "AM", category: .connect),
        DayTime(hour: "8:30", time: "AM", category: .grow),
        DayTime(hour: "2:00", time: "PM", category: .practice),
        DayTime(hour: "5:00", time: "PM", category: .tutorial)
    ]
}
