//
//  WelcomeView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            
            VStack(alignment: .center) {
                // MARK: Welcome Illustration
                Image("illustration-welcome")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 305, height: 305)
                
                Spacer().frame(height: 60)
                
                // MARK: Title and Paragraph
                VStack(alignment: .leading, spacing: 8) {
                    Text("Welcome to Latihin")
                        .font(.title)
                        .bold()
                    
                    Text("Latihin is an app that helps sport lovers find and meet coaches in your area.")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer().frame(height: 40)
                
                // MARK: Buttons
                VStack(alignment: .center, spacing: 20) {
                    NavigationLink(destination: CreateAccountView()) {
                        LTHButtonNavLink(title: "Create account", variant: .primary)
                    }
                    
                    NavigationLink(destination: SignInView()) {
                        LTHButtonNavLink(title: "Sign in", variant: .secondary)
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    WelcomeView()
}
