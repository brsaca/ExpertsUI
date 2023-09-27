//
//  DaySchedule.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import Foundation

struct DaySchedule {
    let id = UUID()
    let day: String
    let mentor: Mentor
    let dayTime: [DayTime]
}

extension DaySchedule {
    static let MOCK_SCHEDULE = [
        DaySchedule(day: "1 MARCH", mentor: Mentor.MOCK_MENTORS[0], dayTime: DayTime.MOCK_DAYTIMES),
        DaySchedule(day: "5 MARCH", mentor: Mentor.MOCK_MENTORS[1], dayTime: DayTime.MOCK_DAYTIMES),
        DaySchedule(day: "6 MARCH", mentor: Mentor.MOCK_MENTORS[2], dayTime: DayTime.MOCK_DAYTIMES),
        DaySchedule(day: "8 MARCH", mentor: Mentor.MOCK_MENTORS[3], dayTime: DayTime.MOCK_DAYTIMES),
        DaySchedule(day: "11 MARCH", mentor: Mentor.MOCK_MENTORS[4], dayTime: DayTime.MOCK_DAYTIMES),
        DaySchedule(day: "14 MARCH", mentor: Mentor.MOCK_MENTORS[5], dayTime: DayTime.MOCK_DAYTIMES),
        DaySchedule(day: "20 MARCH", mentor: Mentor.MOCK_MENTORS[6], dayTime: DayTime.MOCK_DAYTIMES),
        DaySchedule(day: "22 MARCH", mentor: Mentor.MOCK_MENTORS[7], dayTime: DayTime.MOCK_DAYTIMES),
        DaySchedule(day: "26 MARCH", mentor: Mentor.MOCK_MENTORS[8], dayTime: DayTime.MOCK_DAYTIMES),
        DaySchedule(day: "30 MARCH", mentor: Mentor.MOCK_MENTORS[9], dayTime: DayTime.MOCK_DAYTIMES)
    ]
}
