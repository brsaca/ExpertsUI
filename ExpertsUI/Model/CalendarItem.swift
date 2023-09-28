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
    let schedule: DaySchedule?
}

extension CalendarItem {
    static let MOCK_ITEMS = [
        CalendarItem(itemType: .title, text: "MON", schedule: nil),
        CalendarItem(itemType: .title, text: "TUE", schedule: nil),
        CalendarItem(itemType: .title, text: "WED", schedule: nil),
        CalendarItem(itemType: .title, text: "THR", schedule: nil),
        CalendarItem(itemType: .title, text: "FRI", schedule: nil),
        CalendarItem(itemType: .title, text: "SAT", schedule: nil),
        CalendarItem(itemType: .title, text: "SUN", schedule: nil),
        CalendarItem(itemType: .empty, text: "", schedule: nil),
        CalendarItem(itemType: .empty, text: "", schedule: nil),
        CalendarItem(itemType: .empty, text: "", schedule: nil),
        CalendarItem(itemType: .empty, text: "", schedule: nil),
        CalendarItem(itemType: .empty, text: "", schedule: nil),
        CalendarItem(itemType: .day, text: "1", schedule: DaySchedule.MOCK_SCHEDULE[0]),
        CalendarItem(itemType: .day, text: "2", schedule: nil),
        CalendarItem(itemType: .day, text: "3", schedule: nil),
        CalendarItem(itemType: .day, text: "4", schedule: nil),
        CalendarItem(itemType: .day, text: "5", schedule: DaySchedule.MOCK_SCHEDULE[1]),
        CalendarItem(itemType: .day, text: "6", schedule: DaySchedule.MOCK_SCHEDULE[2]),
        CalendarItem(itemType: .day, text: "7", schedule: nil),
        CalendarItem(itemType: .day, text: "8", schedule: DaySchedule.MOCK_SCHEDULE[3]),
        CalendarItem(itemType: .day, text: "9", schedule: nil),
        CalendarItem(itemType: .day, text: "10", schedule: nil),
        CalendarItem(itemType: .day, text: "11", schedule: DaySchedule.MOCK_SCHEDULE[4]),
        CalendarItem(itemType: .day, text: "12", schedule: nil),
        CalendarItem(itemType: .day, text: "13", schedule: nil),
        CalendarItem(itemType: .day, text: "14", schedule: DaySchedule.MOCK_SCHEDULE[5]),
        CalendarItem(itemType: .day, text: "15", schedule: nil),
        CalendarItem(itemType: .day, text: "16", schedule: nil),
        CalendarItem(itemType: .day, text: "17", schedule: nil),
        CalendarItem(itemType: .day, text: "18", schedule: nil),
        CalendarItem(itemType: .day, text: "19", schedule: nil),
        CalendarItem(itemType: .day, text: "20", schedule: DaySchedule.MOCK_SCHEDULE[6]),
        CalendarItem(itemType: .day, text: "21", schedule: nil),
        CalendarItem(itemType: .day, text: "22", schedule: DaySchedule.MOCK_SCHEDULE[7]),
        CalendarItem(itemType: .day, text: "23", schedule: nil),
        CalendarItem(itemType: .day, text: "24", schedule: nil),
        CalendarItem(itemType: .day, text: "25", schedule: nil),
        CalendarItem(itemType: .day, text: "26", schedule: DaySchedule.MOCK_SCHEDULE[8]),
        CalendarItem(itemType: .day, text: "27", schedule: nil),
        CalendarItem(itemType: .day, text: "28", schedule: nil),
        CalendarItem(itemType: .day, text: "29", schedule: nil),
        CalendarItem(itemType: .day, text: "30", schedule: DaySchedule.MOCK_SCHEDULE[9]),
        CalendarItem(itemType: .day, text: "31", schedule: nil),
    ]
}
