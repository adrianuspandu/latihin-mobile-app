//
//  Coach.swift
//  Latihin
//
//  Created by Rosa Tiara Galuh on 10/11/25.
//

import SwiftUI

// MARK: - [Coach Model]
/// A model representing a coach with their display properties.
///
/// This structure contains all the necessary information to display a coach card,
/// including their name, profile photo, rating, sports expertise, description, and pricing.
///
/// - Properties:
///   - id: unique identifier for the coach
///   - name: display name of the coach
///   - profileImageName: asset name for the coach's profile photo
///   - rating: coach's rating (out of 5.0)
///   - sports: list of sports the coach teaches
///   - description: brief description of the coach
///   - pricePerSession: price per session in Rupiah
struct Coach: Identifiable {
    let id = UUID()
    let name: String
    let profileImageName: String
    let rating: Double
    let sports: [String]
    let description: String
    let pricePerSession: Int
}

