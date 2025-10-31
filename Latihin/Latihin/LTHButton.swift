//
//  LTHButton.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 30.10.2025.
//

import SwiftUI

/// A custom reusable button that matches the design language and color of the app. The button
///  has 5 variants: .primary, .secondary, .disabled, .destructive, and .loading

struct LTHButton: View {
    
    let title: String
    let variant: LTHButtonVariant
    let action: () -> Void
    
    
    var body: some View {
        Button(action: action) {
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
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        LTHButton(title: "Label", variant: .primary) {
            // Action
        }
        
        LTHButton(title: "Label", variant: .secondary) {
            // Action
        }
        
        LTHButton(title: "Label", variant: .disabled) {
            // Action
        }
        
        LTHButton(title: "Label", variant: .destructive) {
            // Action
        }
        
        LTHButton(title: "Label", variant: .loading) {
            // Action
        }
    }
}
