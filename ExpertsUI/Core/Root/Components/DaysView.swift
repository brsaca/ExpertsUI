//
//  DaysView.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

struct DaysView: View {
    let item: CalendarItem
    
    var body: some View {
        ZStack {
            if let mentor = item.mentor {
                Image(mentor.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay {
                        Color.black.opacity(0.4)
                            .clipShape(Circle())
                    }
            }
            Text(item.text)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(item.mentor != nil ? .white : .black)
        }
    }
}

struct DayWithMentor_Previews: PreviewProvider {
    static var previews: some View {
        DaysView(item: CalendarItem(itemType: .day, text: "1", mentor: Mentor.MOCK_MENTORS[0]))
    }
}

struct DayWithoutMentor_Previews: PreviewProvider {
    static var previews: some View {
        DaysView(item: CalendarItem(itemType: .day, text: "4", mentor:nil))
    }
}
