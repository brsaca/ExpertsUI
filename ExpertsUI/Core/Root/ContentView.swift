//
//  ContentView.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            // MARK: Background
            Color.calendarBkg
                .ignoresSafeArea()
            
            // MARK: Top Bar
            HStack(alignment: .top) {
                Image("bren")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .padding(.trailing, 10)
                
                Group {
                    Text("Hey")
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                    
                    Text("Bren!")
                        .foregroundColor(.black)
                        .fontWeight(.regular)
                }
                .font(.title2)
                
                Spacer()
                
                Image(systemName: "chevron.down")
                    .frame(height: 20)
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 24)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
