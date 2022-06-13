//
//  ContentView.swift
//  Memorize
//
//  Created by Chinmay Bansal on 6/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center ){
            RoundedRectangle(cornerRadius: 20.0)
                    .stroke(lineWidth: 3.0)
            Text("Hello, World!")
                  
               
        }
        .padding(.horizontal)
        .foregroundColor(.green)
//        return RoundedRectangle(cornerRadius: 20.0)
//            .stroke(lineWidth: 3.0)
//            .padding(.horizontal)
//            .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
//        Text("Hello, World!").
    }
}















































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
