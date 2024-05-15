//
//  PlayersListView.swift
//  UsersSystem
//
//  Created by Mohamed El-Zayat on 15/05/2024.
//

import SwiftUI
import SwiftData

struct PlayersListView: View {
    @Query var players: [Player]
    
    var body: some View {
        List(players) { player in
            Text(player.name)
        }
    }
}

#Preview {
    PlayersListView()
}
