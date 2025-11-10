//
//  File.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 10.11.2025.
//

import Combine
import FirebaseAuth
import Foundation

class ContentViewVM: ObservableObject {
    @Published var currentUserId = ""
    
    private var handler: AuthStateDidChangeListenerHandle?
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener({ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        })
    }
}
