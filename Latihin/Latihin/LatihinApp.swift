//
//  LatihinApp.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 21.10.2025.
//

import FirebaseCore
import SwiftUI

@main
struct LatihinApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
