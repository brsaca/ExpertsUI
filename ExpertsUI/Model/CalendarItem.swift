//
//  CalendarItem.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import Foundation

enum ItemType {
    case title
    case day
    case empty
}

struct CalendarItem {
    let id = UUID()
    let itemType: ItemType
    let text: String
    let mentor: Mentor?
}

extension CalendarItem {
    static let MOCK_ITEMS = [
        CalendarItem(itemType: .title, text: "MON", mentor: nil),
        CalendarItem(itemType: .title, text: "TUE", mentor: nil),
        CalendarItem(itemType: .title, text: "WED", mentor: nil),
        CalendarItem(itemType: .title, text: "THR", mentor: nil),
        CalendarItem(itemType: .title, text: "FRI", mentor: nil),
        CalendarItem(itemType: .title, text: "SAT", mentor: nil),
        CalendarItem(itemType: .title, text: "SUN", mentor: nil),
        CalendarItem(itemType: .empty, text: "", mentor: nil),
        CalendarItem(itemType: .empty, text: "", mentor: nil),
        CalendarItem(itemType: .empty, text: "", mentor: nil),
        CalendarItem(itemType: .empty, text: "", mentor: nil),
        CalendarItem(itemType: .empty, text: "", mentor: nil),
        CalendarItem(itemType: .day, text: "1", mentor: Mentor.MOCK_MENTORS[0]),
        CalendarItem(itemType: .day, text: "2", mentor: nil),
        CalendarItem(itemType: .day, text: "3", mentor: nil),
        CalendarItem(itemType: .day, text: "4", mentor: nil),
        CalendarItem(itemType: .day, text: "5", mentor: Mentor.MOCK_MENTORS[1]),
        CalendarItem(itemType: .day, text: "6", mentor: Mentor.MOCK_MENTORS[2]),
        CalendarItem(itemType: .day, text: "7", mentor: nil),
        CalendarItem(itemType: .day, text: "8", mentor: Mentor.MOCK_MENTORS[3]),
        CalendarItem(itemType: .day, text: "9", mentor: nil),
        CalendarItem(itemType: .day, text: "10", mentor: nil),
        CalendarItem(itemType: .day, text: "11", mentor: Mentor.MOCK_MENTORS[4]),
        CalendarItem(itemType: .day, text: "12", mentor: nil),
        CalendarItem(itemType: .day, text: "13", mentor: nil),
        CalendarItem(itemType: .day, text: "14", mentor: Mentor.MOCK_MENTORS[5]),
        CalendarItem(itemType: .day, text: "15", mentor: nil),
        CalendarItem(itemType: .day, text: "16", mentor: nil),
        CalendarItem(itemType: .day, text: "17", mentor: nil),
        CalendarItem(itemType: .day, text: "18", mentor: nil),
        CalendarItem(itemType: .day, text: "19", mentor: nil),
        CalendarItem(itemType: .day, text: "20", mentor: Mentor.MOCK_MENTORS[6]),
        CalendarItem(itemType: .day, text: "21", mentor: nil),
        CalendarItem(itemType: .day, text: "22", mentor: Mentor.MOCK_MENTORS[7]),
        CalendarItem(itemType: .day, text: "23", mentor: nil),
        CalendarItem(itemType: .day, text: "24", mentor: nil),
        CalendarItem(itemType: .day, text: "25", mentor: nil),
        CalendarItem(itemType: .day, text: "26", mentor: Mentor.MOCK_MENTORS[8]),
        CalendarItem(itemType: .day, text: "27", mentor: nil),
        CalendarItem(itemType: .day, text: "28", mentor: nil),
        CalendarItem(itemType: .day, text: "29", mentor: nil),
        CalendarItem(itemType: .day, text: "30", mentor: Mentor.MOCK_MENTORS[9]),
        CalendarItem(itemType: .day, text: "31", mentor: nil),
    ]
}
