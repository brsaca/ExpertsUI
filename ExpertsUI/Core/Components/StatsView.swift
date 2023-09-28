//
//  StatsView.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

enum StatsType {
    case likes
    case comments
    case favorite
    
    var image: String {
        switch self {
        case .likes: return "heart.fill"
        case .comments: return "ellipsis.bubble.fill"
        case .favorite: return "seal"
        }
    }
}

struct StatsView: View {
    
    let amount: Int
    let statsType: StatsType
    
    var body: some View {
        HStack {
            Image(systemName: statsType.image)
                .foregroundColor(.gray)
            
            if amount > 0 {
                Text("\(amount)")
            }
        }
        .font(.system(size: 14))
        .padding(.horizontal, 15)
        .padding(.vertical, 15)
        .background(.gray.opacity(0.2))
        .clipShape(Capsule())
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(amount: 324, statsType: .likes)
    }
}

struct StatsWithZero_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(amount: 0, statsType: .favorite)
    }
}
