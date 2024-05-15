//
//  Player.swift
//  UsersSystem
//
//  Created by Mohamed El-Zayat on 15/05/2024.
//

import Foundation
import SwiftData

@Model
class Player {
    var name: String
    var score: Int
    
    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
    
//    func shoot() -> Int {
//        let res = Int.random(in: 0...1)
//        self.score += res
//        return res
//    }
}
