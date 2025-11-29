//
//  LTHGreetingMessage.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 29.11.2025.
//

import SwiftUI

struct LTHGreetingMessage: View {
    let name: String
    let location: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Hello, \(name)!")
                .font(.title3)
                .bold()
            HStack {
                Image(systemName: "location.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16)
                    .foregroundStyle(Color.accent)
                Text(location)
            }
        }
    }
}

#Preview {
    LTHGreetingMessage(name: "John", location: "Tangerang, Banten")
}
