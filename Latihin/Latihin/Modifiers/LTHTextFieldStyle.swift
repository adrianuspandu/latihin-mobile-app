//
//  LTHTextFieldStyle.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

struct LTHTextFieldStyle: ViewModifier {
    var isValid: Bool
    
    func body(content: Content) -> some View {
        content
            .autocorrectionDisabled()
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 4))
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color(isValid ? .systemGray : .systemRed), lineWidth: 0.5)
            )
    }
}
