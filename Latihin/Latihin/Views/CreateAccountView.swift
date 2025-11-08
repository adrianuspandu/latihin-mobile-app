//
//  CreateAccountView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

struct CreateAccountView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    @State var isValid = false
    
    var body: some View {
        
        VStack {
            Spacer().frame(height: 60)
            
            VStack(spacing: 20) {
                LTHTextField(text: $name, label: "Name", type: .name, placeholder: "John Appleseed", errorMessage: "Please enter your name.")
                
                LTHTextField(text: $email, label: "Email address", type: .email, placeholder: "johnappleseed@example.com", errorMessage: "Please enter a valid email address.")
                
                LTHTextField(text: $password, label: "Password", type: .password, errorMessage: "Password must be at least 8 characters long, include at least one uppercase letter, one lowercase letter, one digit, and one special character.")
                
                LTHTextField(text: $confirmPassword, label: "Confirm password", type: .password, errorMessage: "Passwords are not matched.")
            }
            
            Spacer()
            
            LTHButton(title: "Create account", variant: isValid ? .primary : .disabled) {
                // Action here
            }
            
            Spacer().frame(height: 40)
            
            HStack {
                Text("Already have an account?")
                NavigationLink(destination: SignInView()) {
                    Text("Sign in")
                        .foregroundStyle(Color(.systemBlue))
                }
            }
            
        }
        .navigationTitle("Create Account")
        .navigationBarTitleDisplayMode(.inline)
        .padding(20)
        
    }
}

#Preview {
    NavigationStack {
        CreateAccountView()
    }
}
