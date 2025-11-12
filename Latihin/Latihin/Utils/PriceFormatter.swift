//
//  PriceFormatter.swift
//  Latihin
//
//  Created by Rosa Tiara Galuh on 10/11/25.
//

import Foundation

// MARK: - [PriceFormatter]
/// Helper functions for formatting prices and currency values.
///
/// This utility provides centralized price formatting logic,
/// making it easy to maintain consistent currency display throughout the app.
///
struct PriceFormatter {
    
    /// Formats the price with thousands separator
    /// - Parameter price: The price value as an integer
    /// - Returns: A formatted string with comma separators (e.g., "200,000")
    static func formatPrice(_ price: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        return formatter.string(from: NSNumber(value: price)) ?? "\(price)"
    }
}

