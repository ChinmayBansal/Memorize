//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Chinmay Bansal on 6/13/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryView(game: game)
        }
    }
}
