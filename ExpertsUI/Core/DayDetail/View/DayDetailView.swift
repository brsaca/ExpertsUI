//
//  DayDetailView.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

struct DayDetailView: View {
    
    let schedule: DaySchedule
    
    let rows = [
        GridItem(.fixed(10)), GridItem(.fixed(UIScreen.main.bounds.width - 20)), GridItem(.fixed(10))
    ]
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing:20) {
                // MARK: Top Bar
                HStack {
                    Image(systemName: "chevron.left.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.black, Color("buttonDayBar"))
                    
                    Spacer()
                    
                    Text(schedule.day)
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .font(.title2)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.black, Color("buttonDayBar"))
                }
                .padding(.horizontal, 24)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(DaySchedule.MOCK_SCHEDULE, id: \.id) { item in
                            MentorView(mentor: item.mentor, size: MentorImageSize.large)
                        }
                    }
                    //.scrollTargetLayout()
                }
                //.scrollTargetBehavior(.paging)
            }
        }
        .padding(.top, 60)
        .padding(.bottom, 40)
        .edgesIgnoringSafeArea(.all)
        .background(Color.dayBkg)
    }
}

struct DayDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DayDetailView(schedule: DaySchedule.MOCK_SCHEDULE[0])
    }
}
