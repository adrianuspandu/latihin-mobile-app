//
//  SignInViewVM.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import Combine
import SwiftUI

class SignInViewVM: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    var emailIsValid: Bool { email.wholeMatch(of: emailRegex) != nil }
    var formIsValid: Bool { emailIsValid && !password.isEmpty }
}
