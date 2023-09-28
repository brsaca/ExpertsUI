//
//  MentorView.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

enum MentorImageSize {
    case small
    case large
    
    var dimension: CGFloat {
        switch self {
        case .small: return 50
        case .large: return 260
        }
    }
}

struct MentorView: View {
    
    let mentor: Mentor
    let size: MentorImageSize
    
    var body: some View {
        VStack {
            Image(mentor.image)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
                .padding(.horizontal)
            
            if size == .large {
                Text(mentor.profesion)
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                    .padding(.bottom, 2)
                
                Text(mentor.name)
                    .font(.title)
            }
        }
    }
}

struct SmallMentor_Previews: PreviewProvider {
    static var previews: some View {
        MentorView(mentor: Mentor.MOCK_MENTORS[0], size: MentorImageSize.small)
    }
}

struct LargeMentor_Previews: PreviewProvider {
    static var previews: some View {
        MentorView(mentor: Mentor.MOCK_MENTORS[0], size: MentorImageSize.large)
    }
}
