//
//  ContentView.swift
//  ExpertsUI
//
//  Created by Brenda Saavedra Cantu on 27/09/23.
//

import SwiftUI

struct ContentView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    private let dimension: CGFloat = UIScreen.main.bounds.width / 7
    
    var body: some View {
        NavigationStack {
            ScrollView (.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing:20) {
                    // MARK: Top Bar
                    HStack {
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
                    
                    VStack(alignment: .leading){
                        Group {
                            Text("Now You've")
                                .foregroundColor(Color("grayTitle"))
                            Text("Found Your \nMentor ")
                                .foregroundColor(.black)
                        }
                        .font(.system(size: 50))
                        .frame(width: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal, 24)
                    
                    // MARK: Explore
                    VStack(alignment: .leading){
                        // Introduction
                        HStack(alignment: .top) {
                            Text("Explore")
                                .font(.title2)
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("Read Profiles Of\nMentors Who Have The\nExperience")
                                .frame(width: .infinity)
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(width: 200, alignment: .leading)
                        }
                        .frame(width: .infinity)
                        
                        HStack(alignment: .top) {
                            // Day
                            VStack {
                                Text("12")
                                    .fontWidth(.condensed)
                                    .font(.system(size: 140))
                                    .fontWeight(.bold)
                                
                                Spacer()
                            }
                            .frame(width: 140, alignment: .leading)
                            
                            Spacer()
                            // Month
                            VStack(alignment: .leading){
                                Spacer()
                                
                                Text("Boarded courses\nper month")
                                    .font(.callout)
                                    .fontWeight(.medium)
                                    .foregroundColor(.gray)
                                    .frame(width: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                Text("March")
                                    .font(.title2)
                                    .fontWeight(.medium)
                            }
                            .frame(width: 200, alignment: .leading)
                        }
                        .frame(width: .infinity, height: 140)
                    }
                    .padding(.horizontal, 24)
                    
                    // MARK: Calendar
                    LazyVGrid(columns: gridItems, spacing: 1) {
                        ForEach(CalendarItem.MOCK_ITEMS, id: \.id) { item in
                            if item.itemType == .title {
                                DaysTitle(day: item.text)
                            } else if item.itemType == .empty {
                                Text("")
                            } else {
                                NavigationLink {
                                    if let schedule = item.schedule {
                                        DayDetailView(schedule: schedule)
                                            .navigationBarHidden(true)
                                    }
                                } label: {
                                    DaysView(item: item)
                                }
                                
                            }
                        }
                    }
                    .padding(.horizontal, 24)
                }
                
            }
            .padding(.horizontal, 24)
            .padding(.top, 60)
            .padding(.bottom, 40)
            .edgesIgnoringSafeArea(.all)
            .background(Color.calendarBkg)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
