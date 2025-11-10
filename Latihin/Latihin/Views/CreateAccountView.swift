//
//  CreateAccountView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

struct CreateAccountView: View {
    @StateObject var viewModel = CreateAccountViewVM()
    
    var body: some View {
        
        VStack {
            
            Spacer().frame(height: 60)
            
            // MARK: Form
            VStack(spacing: 20) {
                nameTextField()
                emailTextfield()
                passwordTextField()
                confirmPasswordTextField()
            }
            
            Spacer()
            
            // MARK: Button
            LTHButton(title: "Create account", variant: viewModel.formIsValid ? .primary : .disabled) {
                viewModel.handleCreateAccount()
            }
            
            Spacer().frame(height: 40)
            
            // MARK: Sign In Button
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
    
    
    
    @ViewBuilder
    func nameTextField() -> some View {
        VStack(alignment: .leading) {
            LTHTextFieldLabel("Name", required: true)
            
            TextField(viewModel.namePlaceholder, text: $viewModel.name)
                .lthTextFieldStyle(isValid: viewModel.name.isEmpty || viewModel.nameIsValid)
                .keyboardType(.default)
            
            if !viewModel.name.isEmpty && !viewModel.nameIsValid {
                Text("Please enter a valid name")
                    .font(.callout)
                    .foregroundStyle(Color(.systemRed))
            }
        }
    }
    
    @ViewBuilder
    func emailTextfield() -> some View {
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
    }
    
    @ViewBuilder
    func passwordTextField() -> some View {
        VStack(alignment: .leading) {
            LTHTextFieldLabel("Password", required: true)
            SecureField("Password", text: $viewModel.password)
                .lthSecureFieldStyle(isValid: viewModel.password.isEmpty || viewModel.passwordIsValid)
                .textInputAutocapitalization(.never)
                .keyboardType(.default)
            
            if !viewModel.password.isEmpty && !viewModel.passwordIsValid {
                Text("Password must have at least 8 characters, one uppercase, one lowercase, one digit, and one special characters.")
                    .font(.callout)
                    .foregroundStyle(Color(.systemRed))
            }
        }
    }
    
    @ViewBuilder
    func confirmPasswordTextField() -> some View {
        VStack(alignment: .leading) {
            LTHTextFieldLabel("Confirm Password", required: true)
            SecureField("Confirm Password", text: $viewModel.confirmPassword)
                .lthSecureFieldStyle(isValid: viewModel.confirmPassword.isEmpty || viewModel.confirmPasswordIsValid)
                .textInputAutocapitalization(.never)
                .keyboardType(.default)
            
            if !viewModel.confirmPassword.isEmpty && !viewModel.confirmPasswordIsValid {
                Text("Password doesn't match.")
                    .font(.callout)
                    .foregroundStyle(Color(.systemRed))
            }
        }
    }
}

#Preview {
    NavigationStack {
        CreateAccountView()
    }
}
