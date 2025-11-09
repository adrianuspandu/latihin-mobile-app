//
//  TextValidation.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 07.11.2025.
//

import SwiftUI

// MARK: Regular expressions for text validation
let emailRegex = /^[\w\.-]+@[\w\.-]+\.\w+$/
let passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
let nameRegex = /^[A-Za-z]+(?:[-' ][A-Za-z]+)*$/
