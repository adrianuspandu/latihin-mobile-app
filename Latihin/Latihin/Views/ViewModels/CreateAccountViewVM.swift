//
//  CreateAccountViewVM.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import Combine
import FirebaseAuth
import FirebaseFirestore
import SwiftUI

class CreateAccountViewVM: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    let namePlaceholder = "John Appleseed"
    let emailPlaceholder = "john@appleseed.com"
    
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
    
    func registerAccount() {
        guard formIsValid else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else { return }
            
            self?.insertUserRecord(userId: userId)
        }
    }
    
    func insertUserRecord(userId: String) {
        let newUser = User(id: userId, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .setData(newUser.asDictionary())
    }
}
