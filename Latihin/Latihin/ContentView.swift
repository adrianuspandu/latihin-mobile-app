//
//  ContentView.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 21.10.2025.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    
    var body: some View {
        VStack {
            LTHTextField(text: $text, label: "Email", type: .email, placeholder: "johnappleseed@example.com", errorMessage: "Please enter a valid email address")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
