//
//  HomeColorCodedSportCard.swift
//  Latihin
//
//  Created by Rosa Tiara Galuh on 31/10/25.
//

import SwiftUI

// MARK: - [CircleSportCardItem]
/// A view representing an individual sport card with a circular icon and label.
///
/// A component that displays a sport as a vertical card with:
/// - A circular background containing the sport's icon
/// - The sport's name displayed below the icon
///
/// The card uses the sport's custom background color and maintains consistent sizing
/// for a uniform appearance across all sport types.
///
/// ## Visual Structure
/// ```
/// ┌─────────┐
/// │    ○    │  ← Circular icon (60x60)
/// │  Sport  │  ← Sport name label
/// └─────────┘
/// ```
///

struct CircleSportCardItem: View {
    let sport: Sport

    var body: some View {
        VStack(spacing: 10) {
            ZStack {
                Circle()
                    .fill(sport.circleCardBackgroundColor)
                    .frame(width: 60, height: 60)
                Image(sport.iconName)
                    .resizable()
                    .accentColor(.black)
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.black)
            }
            Text(sport.name)
                .font(.system(size: 10, weight: .regular))
                .foregroundColor(.primary)
        }
    }
}
