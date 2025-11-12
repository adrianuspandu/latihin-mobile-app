//
//  ContentView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 21.10.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewVM()
    
    var body: some View {
        if viewModel.isSignedIn && !viewModel.currentUserId.isEmpty {
            tabView()
        } else {
            WelcomeView()
        }
    }
    
    @ViewBuilder
    func tabView() -> some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                HomeView()
            }
            
            Tab("Calendar", systemImage: "calendar") {
                CalendarView()
            }
            
            Tab("My Coaches", systemImage: "hat.cap.fill") {
                MyCoachesView()
            }
            
            Tab("Profile", systemImage: "person.fill") {
                ProfileView()
            }
        }
        .tint(.accent)
    }
}

#Preview {
    ContentView(viewModel: ContentViewVM())
}
