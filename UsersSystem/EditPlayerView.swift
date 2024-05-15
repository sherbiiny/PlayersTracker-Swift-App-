//
//  EditPlayerView.swift
//  UsersSystem
//
//  Created by Mohamed El-Zayat on 15/05/2024.
//

import SwiftUI

struct EditPlayerView: View {
    @Bindable var player: Player
    @State var showAlert = false
    @State var alertMessage = ""
    
    var body: some View {
        Form {
            Section {
                TextField("name", text: $player.name)
                    .textContentType(.name)
                    .font(.title3)
            }
            
            Section {
                Text("Score: \(player.score)")
            }
            
            Section {
                Button("Shoot", action: shoot)
            }
        }
        .navigationTitle("Player Data")
        .alert(alertMessage, isPresented: $showAlert) {
            Button("OK") { self.showAlert = false }
        }
    }
    
    func shoot() {
        let result = player.shoot()
        
        if result == 1 {
            alertMessage = "\(player.name) has scored !!"
        } else {
            alertMessage = "\(player.name) is في الفاضي he has missed!"
        }
        
        showAlert = true
    }
}

//#Preview {
//    EditPlayerView()
//}
