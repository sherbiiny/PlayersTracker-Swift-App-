//
//  EditPlayerView.swift
//  UsersSystem
//
//  Created by Mohamed El-Zayat on 15/05/2024.
//

import SwiftUI

struct EditPlayerView: View {
    @Bindable var player: Player
    
    var body: some View {
        Form {
            Section {
                TextField("name", text: $player.name)
                    .textContentType(.name)
            }
        }
        .navigationTitle("Player Data")
    }
}

//#Preview {
//    EditPlayerView()
//}
