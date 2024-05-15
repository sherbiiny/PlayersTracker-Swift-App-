//
//  PlayersListView.swift
//  UsersSystem
//
//  Created by Mohamed El-Zayat on 15/05/2024.
//

import SwiftUI
import SwiftData

struct PlayersListView: View {
    @Environment(\.modelContext) var modelContext
    @Query var players: [Player]
    
    var body: some View {
        List {
            ForEach(players) { player in
                NavigationLink(value: player) {
                    Text(player.name)
                }
            }
            .onDelete(perform: deletePlayer)
        }
    }
    
    func deletePlayer(at offsets: IndexSet) {
        for offset in offsets {
            let person = players[offset]
            modelContext.delete(person)
        }
    }
}

#Preview {
    PlayersListView()
}
