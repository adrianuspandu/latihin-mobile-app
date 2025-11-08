//
//  LTHTextField.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 31.10.2025.
//

import SwiftUI

enum TextFieldType {
    case name
    case email
    case password
    case normal
    
    var keyboardType: UIKeyboardType {
        switch self {
        case .name:
            return .default
        case .email:
            return .emailAddress
        case .password:
            return .asciiCapable
        case .normal:
            return .default
        }
    }
}

struct LTHTextField: View {
    @Binding var text: String
    @State var isValid = false
    
    var label: String?
    var type: TextFieldType
    let required = true
    var placeholder = ""
    var errorMessage: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // MARK: TextField Label
            if let label = label {
                Text("\(label)\(required ? "*" : "")")
                    .font(.callout)
            }
            
            // MARK: TextField Body
            if type == .password {
                
                SecureField(
                    placeholder,
                    text: $text
                )
                    // MARK: SecureField Logic Modifiers
                    .onChange(of: text, { oldValue, newValue in
                        isValid = validate()
                    })
                
                    // MARK: SecureField UI Modifiers
                    .keyboardType(type.keyboardType)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 10)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(!isValid && !text.isEmpty ? .systemRed : .systemGray), lineWidth: 0.5)
                    )
                
            } else {
                
                TextField(
                    placeholder,
                    text: $text
                )
                // MARK: TextField Logic Modifiers
                .onChange(of: text, { oldValue, newValue in
                    isValid = validate()
                })
                
                // MARK: TextField UI Modifiers
                .keyboardType(type.keyboardType)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .padding(.horizontal, 12)
                .padding(.vertical, 10)
                .background(Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 4))
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color(!isValid && !text.isEmpty ? .systemRed : .systemGray), lineWidth: 0.5)
                )
            }
            
            // MARK: TextField Error Message
            if required && !text.isEmpty && !isValid {
                Text(errorMessage ?? "Invalid input")
                    .font(.callout)
                    .foregroundStyle(Color(.systemRed))
            }
        }
    }
    
    private func validate() -> Bool {
        switch type {
        case .name:
            return text.wholeMatch(of: nameRegex) != nil
        case .email:
            return text.wholeMatch(of: emailRegex) != nil
        case .password:
            return text.wholeMatch(of: passwordRegex) != nil
        default:
            if required {
                return !text.isEmpty
            } else {
                return true
            }
        }
    }
}

#Preview {
    VStack {
        LTHTextField(text: .constant(""), label: "Name", type: .name, placeholder: "John Appleseed")
    }
}
