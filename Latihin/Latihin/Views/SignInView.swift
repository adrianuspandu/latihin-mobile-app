//
//  SignInView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    @State var isValid = false
    
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack(spacing: 20) {
                
                LTHTextField(text: $email, label: "Email address", type: .email, placeholder: "johnappleseed@example.com", errorMessage: "Please enter a valid email address.")
                
                LTHTextField(text: $password, label: "Password", type: .password, errorMessage: "Incorrect Password")
            }
            
            Spacer()
            
            LTHButton(title: "Sign in", variant: isValid ? .primary : .disabled) {
                // Action here
            }
            
            Spacer().frame(height: 40)
            
            HStack {
                Text("Don't have an account?")
                NavigationLink(destination: CreateAccountView()) {
                    Text("Create account")
                        .foregroundStyle(Color(.systemBlue))
                }
            }
            
        }
        .navigationTitle("Sign In")
        .navigationBarTitleDisplayMode(.inline)
        .padding(20)
        
    }
}

#Preview {
    SignInView()
}
