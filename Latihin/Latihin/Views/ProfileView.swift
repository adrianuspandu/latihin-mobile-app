//
//  ProfileView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 10.11.2025.
//

import FirebaseAuth
import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            Button("Sign out") {
                try! Auth.auth().signOut()
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ProfileView()
}
