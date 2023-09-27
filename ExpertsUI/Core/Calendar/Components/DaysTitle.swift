//
//  DaysTitle.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

struct DaysTitle: View {
    let day: String
    
    var body: some View {
        Text(day)
            .font(.footnote)
            .foregroundColor(.gray)
    }
}

struct DaysTitle_Previews: PreviewProvider {
    static var previews: some View {
        DaysTitle(day: "MON")
    }
}
