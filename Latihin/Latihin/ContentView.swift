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
            HomeView()
        } else {
            WelcomeView()
        }
    }
}

#Preview {
    ContentView()
}
