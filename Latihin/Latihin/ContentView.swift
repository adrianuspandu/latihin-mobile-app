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
            MainTabView()
        } else {
            WelcomeView()
        }
    }

}

struct MainTabView: View {
    @State var appeared = false
    
    var body: some View {
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
        .offset(y: appeared ? 0 : 1000)
        .onAppear {
            withAnimation(.bouncy(duration: 0.75)) {
                appeared = true
            }
        }
        .onDisappear {
            withAnimation(.easeInOut(duration: 0.75)) {
                appeared = false
            }
        }
    }
}

#Preview {
    ContentView(viewModel: ContentViewVM())
}
