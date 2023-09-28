//
//  MentorStatsView.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

struct MentorStatsView: View {
    
    let mentor: Mentor
    
    var body: some View {
        HStack(spacing:2) {
            // MARK:  students
            HStack {
                ForEach(mentor.students, id: \.id) { student in
                    Image(student.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }
            }
            
            Spacer()
            
            // MARK: Stats
            StatsView(amount: mentor.likes, statsType: .likes)
            StatsView(amount: mentor.comments, statsType: .comments)
            StatsView(amount: 0, statsType: .favorite)
        }
    }
}

struct MentorStatsView_Previews: PreviewProvider {
    static var previews: some View {
        MentorStatsView(mentor: Mentor.MOCK_MENTORS[0])
    }
}
