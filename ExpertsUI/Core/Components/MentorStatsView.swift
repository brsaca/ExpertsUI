//
//  MentorStatsView.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

struct MentorStatsView: View {
    // MARK: View Properties
    let mentor: Mentor
    let colors: [Color] = [.red, .blue, .purple]
    
    var body: some View {
        HStack(spacing:2) {
            // MARK:  students
            ZStack {
                ForEach(0..<mentor.students.count, id: \.self) { i in
                    ZStack(alignment: .leading) {
                        HStack(spacing: 0) {
                            Color.clear
                                .frame(width: CGFloat(i) * 70, height: 44)
                            Image(mentor.students[i].image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 44, height: 44)
                            .clipShape(Circle())
                            .overlay(
                                    RoundedRectangle(cornerRadius: 22)
                                        .stroke(.clear, lineWidth: 4)
                                )
                        }
                    }
                }
            }
            .frame(width: 50)
            
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
