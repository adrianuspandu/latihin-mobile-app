//
//  LTHTextFieldLabel.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 08.11.2025.
//

import SwiftUI

struct LTHTextFieldLabel: View {
    
    var label: String
    var required: Bool
    
    init(_ label: String, required: Bool) {
        self.label = label
        self.required = required
    }
    
    
    var body: some View {
        Text("\(label)\(required ? "*" : "")")
            .font(.callout)
    }
}

#Preview {
    LTHTextFieldLabel("Name", required: true)
}
