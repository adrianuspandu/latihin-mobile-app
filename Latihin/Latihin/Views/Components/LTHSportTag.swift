//
//  LTHSportTag.swift
//  Latihin
//
//  Created by Rosa Tiara Galuh on 09/11/25.
//

import SwiftUI

// MARK: - [LTHSportTag]
/// A reusable tag view representing a sport with an icon, name, and customizable tap action.
/// Displays a pill-shaped button with a sport-specific icon and background color.
///
/// Use this component to show selectable sports in lists, filters, or profile sections.
///
struct LTHSportTag: View {

    /// The name of the sport (e.g., "tennis", "basketball")
    let sportName: String

    /// The action to perform when the tag is tapped.
    let action: () -> Void

    private static let sportConfig: [String: (icon: String, color: Color)] = [
        .tennis: (.iconTennis, .tennisSport),
        .basketball: (.iconBasketball, .basketballSport),
        .soccer: (.iconSoccer, .soccerSport),
        .swimming: (.iconSwimming, .swimmingSport),
        .badminton: (.iconBadminton, .badmintonSport),
        .cycling: (.iconCycling, .cyclingSport),
        .running: (.iconRunning, .runningSport)
    ]

    private var iconName: String {
        Self.sportConfig[sportName]?.icon ?? .iconTennis
    }

    private var backgroundColor: Color {
        Self.sportConfig[sportName]?.color ?? .tennisSport
    }

    var body: some View {
        Button(action: action) {
            HStack(spacing: 6) {
                Image(iconName)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)

                Text(sportName)
                    .font(.system(size: 14, weight: .medium))
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .foregroundColor(.primary)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(backgroundColor)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.clear, lineWidth: 1.5)
            )
        }
        .buttonStyle(.plain)
    }
}
