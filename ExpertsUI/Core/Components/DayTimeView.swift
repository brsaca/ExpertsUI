//
//  DayTimeView.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import SwiftUI

struct DayTimeView: View {
    
    // MARK: View Properties
    let time: DayTime
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                // MARK: Hour
                HStack (alignment: .top) {
                    Text(time.hour)
                        .fontWidth(.standard)
                        .font(.system(size: 110))
                    
                    Text(time.time)
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.top, 22)
                }
                // MARK: Details
                HStack {
                    Text(String(describing: time.category).capitalized)
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("-")
                        .font(.footnote)
                    Text(time.category.details)
                        .font(.subheadline)
                }
                .padding(.leading, 5)
            }
            
            Spacer()
            
            // MARK: Toogle
            HStack (alignment: .center) {
                Spacer()
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 20)
            }
            .frame(width: 50, height: 42)
            .padding(.trailing, 8)
            .background(.gray.opacity(0.2))
            .clipShape(Capsule())
        }
        .padding(.vertical)
        .overlay(
            Rectangle()
                .frame(width: nil, height: 0.5, alignment: .top)
                .foregroundColor(.gray), alignment: .top
        )
    }
}

struct DayTimeView_Previews: PreviewProvider {
    static var previews: some View {
        DayTimeView(time: DayTime(hour: "9:00", time: "AM", category: .connect))
    }
}
