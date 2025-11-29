//
//  HomeView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 10.11.2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                LTHGreetingMessage(name: "John", location: "Tangerang, Banten")
                
                Spacer().frame(height: 32)
                
                LTHCircleSportCards()
                    .padding(.horizontal, -20)
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    HomeView()
}
