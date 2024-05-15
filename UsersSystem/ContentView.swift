//
//  ContentView.swift
//  UsersSystem
//
//  Created by Mohamed El-Zayat on 15/05/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @State private var path = [Player]()
    
    var body: some View {
        NavigationStack(path: $path) {
            PlayersListView()
                .navigationTitle("Players")
                .navigationDestination(for: Player.self) { player in
                    EditPlayerView(player: player)
                }
                .toolbar() {
                    Button("Add Person", systemImage: "plus", action: addPlayer)
                }
        }
    }
    
    func addPlayer() {
        let newPlayer = Player(name: "", score: 0)
        modelContext.insert(newPlayer)
        path.append(newPlayer)
    }
}

#Preview {
    ContentView()
}
