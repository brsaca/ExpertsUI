//
//  Color.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

extension Color {
    static let calendarBkg = LinearGradient(colors: [Color("calendarBkg"), Color("bottomBkg")], startPoint: .topLeading, endPoint: .bottomTrailing)
    static let dayBkg = LinearGradient(colors: [Color("dayBkg"), Color("bottomBkg")], startPoint: .topLeading, endPoint: .bottomTrailing)
}
