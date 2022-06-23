//
//  MemoryGame.swift
//  Memorize
//
//  Created by Chinmay Bansal on 6/23/22.
//

import SwiftUI



class EmojiMemoryGame {
    
   static let emojis = ["🍔","🍕","🍟","🌮","🍆","🍎","🍌","🍉","🍇","🍍","🥚","🥕","🥐","🥩","🍿","🍫","🍭","🥥","🥞","🌭","🥗","🥓","🥨","🥖"]

     static func createMemoryGame() -> MemoryGame<String> {
            MemoryGame<String>(numberofPairsOfCards: 4) { pairdIndex in
                emojis[pairdIndex]
            }
    }
   
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
