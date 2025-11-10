//
//  SignInView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

struct SignInView: View {
    @StateObject var viewModel = SignInViewVM()
    
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack(spacing: 20) {
                
                // MARK: Email TextField
                VStack(alignment: .leading) {
                    LTHTextFieldLabel("Email address", required: true)
                    TextField(viewModel.emailPlaceholder, text: $viewModel.email)
                        .lthTextFieldStyle(isValid: viewModel.email.isEmpty || viewModel.emailIsValid)
                        .textInputAutocapitalization(.never)
                        .keyboardType(.emailAddress)
                    
                    if !viewModel.email.isEmpty && !viewModel.emailIsValid {
                        Text("Please enter a valid email address")
                            .font(.callout)
                            .foregroundStyle(Color(.systemRed))
                    }
                }
                
                // MARK: Password TextField
                VStack(alignment: .leading) {
                    LTHTextFieldLabel("Password", required: true)
                    SecureField("Password", text: $viewModel.password)
                        .lthSecureFieldStyle(isValid: true)
                        .textInputAutocapitalization(.never)
                        .keyboardType(.default)
                }
            }
            
            Spacer()
            
            LTHButton(title: "Sign in", variant: viewModel.formIsValid ? .primary : .disabled) {
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
