//
//  HomeColorCodedSportModel.swift
//  Latihin
//
//  Created by Rosa Tiara Galuh on 31/10/25.
//

import SwiftUI
import Swift

// MARK: - [Sport Model]
/// A model representing a sport with its display properties.
///
/// This structure contains all the necessary information to display a sport card,
/// including its name, icon reference, and background color.
///
/// - Properties:
///   - id: unique identifier for the sport
///   - name: display name of the sport
///   - iconName: asset name for the sport's icon image
///   - backgroundColor: background color for the sport card
struct Sport: Identifiable {
    let id = UUID()
    let name: String
    let iconName: String
    let circleCardBackgroundColor: Color
    
    /// add another properties
}
