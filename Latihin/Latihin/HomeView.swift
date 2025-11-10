//
//  HomeView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 10.11.2025.
//

import FirebaseAuth
import SwiftUI

struct HomeView: View {
    var body: some View {
        Button("Sign Out") {
            do {
                try Auth.auth().signOut()
            } catch {
                print("error signing out")
            }
        }
    }
}

#Preview {
    HomeView()
}
