//
//  File.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

extension TextField {
    
    func lthTextFieldStyle(isValid: Bool) -> some View {
        self.modifier(LTHTextFieldStyle(isValid: isValid))
    }
    
}
