//
//  LTHCoachCard.swift
//  Latihin
//
//  Created by Rosa Tiara Galuh on 10/11/25.
//

import SwiftUI

// MARK: - [LTHCoachCard]
/// A reusable card view displaying coach information including profile photo, name, rating,
/// sports expertise, description, and pricing.
///
/// Example Usage:
/// ```
/// LTHCoachCard(
///    coach: Coach(
///        name: "Jules Williams",
///        profileImageName: "face-1",
///        rating: 4.4,
///        sports: [.tennis, .running],
///        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
///        pricePerSession: 200000
///    )) {
///     print("Coach card tapped")
///    }
///
///
struct LTHCoachCard: View {
    
    /// The coach data to display
    let coach: Coach
    
    /// The action to perform when the card is tapped (optional)
    let action: (() -> Void)?
    
    init(coach: Coach, action: (() -> Void)? = nil) {
        self.coach = coach
        self.action = action
    }
    
    var body: some View {
        Button(action: {
            action?()
        }) {
            VStack(spacing: 0) {
                // MARK: Profile Photo
                Image(coach.profileImageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.top, 16)
                    .padding(.horizontal, 16)
                
                // MARK: Card Content
                VStack(alignment: .leading, spacing: 12) {
                    /// Name and Rating
                    HStack(alignment: .center) {
                        Text(coach.name)
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.primary)
                        
                        Spacer()
                        
                        HStack(spacing: 4) {
                            Image(systemName: "star.fill")
                                .font(.system(size: 18))
                                .foregroundColor(.yellow)
                            
                            Text(String(format: "%.1f", coach.rating))
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.primary)
                        }
                    }
                    
                    /// Sport Tags
                    HStack(spacing: 8) {
                        ForEach(coach.sports, id: \.self) { sport in
                            LTHSportTag(sportName: sport) {
                                // Action when sport tag is tapped
                            }
                        }
                    }
                    
                    /// Description
                    Text(coach.description)
                        .font(.system(size: 16))
                        .foregroundColor(.primary)
                        .lineLimit(2)
                        .padding(.top, 4)
                    
                    /// Price per session
                    Text("Rp\(PriceFormatter.formatPrice(coach.pricePerSession))/session")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.primary)
                        .padding(.top, 8)
                }
                .padding(20)
                .background(Color(UIColor.systemBackground))
            }
            .frame(maxWidth: .infinity)
            .background(Color(UIColor.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .shadow(color: Color.black.opacity(0.08), radius: 12, x: 0, y: 4)
        }
        .buttonStyle(.plain)
    }
}

