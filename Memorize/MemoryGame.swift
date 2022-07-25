//
//  MemoryGame.swift
//  Memorize
//
//  Created by Chinmay Bansal on 6/23/22.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["🍔","🍕","🍟","🌮","🍆","🍎","🍌","🍉","🍇","🍍","🥚","🥕","🥐","🥩","🍿","🍫","🍭","🥥","🥞","🌭","🥗","🥓","🥨","🥖"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberofPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Mark: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
