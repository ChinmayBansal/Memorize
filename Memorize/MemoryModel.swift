//
//  MemoryModel.swift
//  Memorize
//
//  Created by Chinmay Bansal on 6/23/22.
//

import Foundation

struct MemoryGame<CardContent> {
   private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberofPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards * 2 cards to cards array
        
        for pairIndex in 0..<numberofPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))


        }
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent
        
    }
}
