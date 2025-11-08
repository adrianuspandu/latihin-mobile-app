//
//  LTHButtonNavLink.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

struct LTHButtonNavLink: View {
    
    var title: String
    var variant: LTHButtonVariant
    
    
    var body: some View {
        ZStack {
            // Button Background Color
            Color(variant.backgroundColor)
                .frame(height: 44)
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .stroke(variant.strokeColor ?? variant.backgroundColor)
                )
            
            HStack {
                
                // Progress View for loading variant
                if variant == .loading {
                    ProgressView()
                        .tint(Color(.systemBackground))
                }
                
                // Button Label
                Text(title)
                    .font(.body)
                    .bold()
                    .foregroundStyle(variant.labelColor)
            }
        }
        .disabled(variant == .disabled)
    }
}

#Preview {
    LTHButtonNavLink(title: "Create account", variant: .primary)
}
