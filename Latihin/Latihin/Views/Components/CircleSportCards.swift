//
//  CircleSportCards.swift
//  Latihin
//
//  Created by Rosa Tiara Galuh on 31/10/25.
//

import SwiftUI

// MARK: - [CircleSportCards]
/// A horizontal collection view displaying multiple sport cards (scrollable).
/// This view arranges sport cards in a horizontal scrollable layout with consistent spacing.
/// Each card is rendered using `CircleSportCardItem` and displays a sport's icon and name.

struct CircleSportCards: View {
    let sports: [Sport] = [
        Sport(name: .tennis, iconName: .iconTennis, circleCardBackgroundColor: .tennisSport),
        Sport(name: .basketball, iconName: .iconBasketball, circleCardBackgroundColor: .basketballSport),
        Sport(name: .cycling, iconName: .iconCycling, circleCardBackgroundColor: .cyclingSport),
        Sport(name: .running, iconName: .iconRunning, circleCardBackgroundColor: .runningSport),
        Sport(name: .swimming, iconName: .iconSwimming, circleCardBackgroundColor: .swimmingSport),
        Sport(name: .soccer, iconName: .iconSoccer, circleCardBackgroundColor: .soccerSport)
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(sports) { sport in
                    CircleSportCardItem(sport: sport)
                }
            }
        }
        .padding()
    }
}

#Preview {
    VStack {
        CircleSportCards()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color(uiColor: .systemBackground))
}
