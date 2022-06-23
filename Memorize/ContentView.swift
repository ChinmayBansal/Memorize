//
//  ContentView.swift
//  Memorize
//
//  Created by Chinmay Bansal on 6/13/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🍔","🍕","🍟","🌮","🍆","🍎","🍌","🍉","🍇","🍍","🥚","🥕","🥐","🥩","🍿","🍫","🍭","🥥","🥞","🌭","🥗","🥓","🥨","🥖"]
    @State var emojiCount = 10
    var body: some View {
        VStack  {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojiCount], id: \.self ) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit
                        )
                    }
                }
            }
            .foregroundColor(.green)
            
        }
        .padding(.horizontal)
        
    }
    
}

struct CardView: View {
    @State var isFaceUp: Bool = true
    var content: String
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp {
               shape.fill().foregroundColor(.white)
               shape.strokeBorder(lineWidth: 3.0)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
           
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
    
}















































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
        ContentView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 12 Pro")
    }
}
