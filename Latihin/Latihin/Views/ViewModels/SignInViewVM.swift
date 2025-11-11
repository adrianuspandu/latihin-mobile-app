//
//  SignInViewVM.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import Combine
import FirebaseAuth
import SwiftUI

class SignInViewVM: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var isShowingErrorAlert: Bool = false
    @Published var isSigningIn: Bool = false
    
    let emailPlaceholder: String = "john@appleseed.com"
    
    var emailIsValid: Bool { email.wholeMatch(of: emailRegex) != nil }
    var formIsValid: Bool { emailIsValid && !password.isEmpty }
    var signInButtonVariant: LTHButtonVariant {
        if formIsValid && !isSigningIn {
            return .primary
        } else if formIsValid && isSigningIn {
            return .loading
        } else {
            return .disabled
        }
    }
    
    func signIn() {
        guard formIsValid else { return }
        isSigningIn = true
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] _, error in
            guard let strongSelf = self else { return }
            
            if let error = error {
                print(error)
                strongSelf.isShowingErrorAlert = true
            }
            
            strongSelf.isSigningIn = false
        }
    }
    
    func resetForm() {
        email = ""
        password = ""
    }
    
}
