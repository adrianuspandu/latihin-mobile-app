//
//  LTHButtonVariant.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 31.10.2025.
//

import SwiftUI

/// A semantic style variant for `LTHButton` that determines its visual appearance,
/// including label, background, and optional stroke colors.

enum LTHButtonVariant {
    case primary
    case secondary
    case disabled
    case destructive
    case loading
    
    var labelColor: Color {
        switch self {
            case .primary:
            return Color(.systemBackground)
        case .secondary:
            return Color("lth-button-primary")
        case .disabled:
            return Color(.quaternaryLabel)
        case .destructive:
            return Color(.systemBackground)
        case .loading:
            return Color(.systemBackground)
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .primary:
            return Color("lth-button-primary")
        case .secondary:
            return Color(.quaternarySystemFill)
        case .disabled:
            return Color(.quaternarySystemFill)
        case .destructive:
            return Color("lth-button-destructive")
        case .loading:
            return Color(.label)
        }
    }
    
    var strokeColor: Color? {
        switch self {
        case .secondary:
            return Color("lth-button-primary")
        default:
            return nil
        }
    }
}
