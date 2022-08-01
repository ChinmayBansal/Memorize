//
//  MemoryGame.swift
//  Memorize
//
//  Created by Chinmay Bansal on 6/23/22.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🍔","🍕","🍟","🌮","🍆","🍎","🍌","🍉","🍇","🍍","🥚","🥕","🥐","🥩","🍿","🍫","🍭","🥥","🥞","🌭","🥗","🥓","🥨","🥖"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberofPairsOfCards: 8) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // Mark: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffleCards() {
        model.shuffleCards()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
