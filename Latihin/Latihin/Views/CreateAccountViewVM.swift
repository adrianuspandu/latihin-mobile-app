//
//  CreateAccountViewVM.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import Combine
import SwiftUI

class CreateAccountViewVM: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    var nameIsValid: Bool { name.wholeMatch(of: nameRegex) != nil }
    var emailIsValid: Bool { email.wholeMatch(of: emailRegex) != nil }
    var passwordIsValid: Bool { password.wholeMatch(of: passwordRegex) != nil }
    var confirmPasswordIsValid: Bool { confirmPassword == password }
    
    var formIsValid: Bool {
        if emailIsValid && emailIsValid && passwordIsValid && confirmPasswordIsValid {
            return true
        } else {
            return false
        }
    }
    
    func handleCreateAccount() {
        guard formIsValid else { return }
        
    }
}
