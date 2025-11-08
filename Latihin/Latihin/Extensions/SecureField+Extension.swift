//
//  SecureField+Extension.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

extension SecureField {
    
    func lthSecureFieldStyle(isValid: Bool) -> some View {
        self.modifier(LTHTextFieldStyle(isValid: isValid))
    }
    
}
