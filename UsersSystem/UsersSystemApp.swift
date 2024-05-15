//
//  UsersSystemApp.swift
//  UsersSystem
//
//  Created by Mohamed El-Zayat on 15/05/2024.
//

import SwiftUI
import SwiftData

@main
struct UsersSystemApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Player.self)
    }
}
