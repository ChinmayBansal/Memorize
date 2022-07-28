//
//  EmojiMemoryView.swift
//  Memorize
//
//  Created by Chinmay Bansal on 6/13/22.
//

import SwiftUI

struct EmojiMemoryView: View {
    @ObservedObject var game: EmojiMemoryGame
    
    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]){
//                ForEach(game.cards) { card in
        AspectVGrid(items: game.cards, aspectRatio: 2/3, content: { card in
            if card.isMatched && !card.isFaceUp {
                Rectangle().opacity(0)
            } else {
                CardView(card: card)
                    .padding(4)
                    .onTapGesture {
                        game.choose(card)
                    }
            }
            
        })
                 
//                }
//            }
//        }
        .foregroundColor(.green)
        .padding(.horizontal)
    }
}

struct CardView: View {
    let card: EmojiMemoryGame.Card
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
                if card.isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: DrawingConstants.lineWitdth)
                    Text(card.content).font(font(in: geometry.size))
                } else if card.isMatched {
                    shape.opacity(0)
                } else {
                    shape.fill()
                }
            }
        }
    }
    
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 20
        static let lineWitdth: CGFloat = 3
        static let fontScale: CGFloat = 0.75
    }
}















































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        EmojiMemoryView(game: game)
            .preferredColorScheme(.dark)
        EmojiMemoryView(game: game)
            .preferredColorScheme(.light)
    }
}
