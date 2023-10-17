//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 17.10.2023.
//

import SwiftUI


let column = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]


var emojis = ["😀","😃","😆","😀","😃","😆","😀","😃","😆"]


struct ContentView: View {
    @State var cardNumber:Int = 4
    
    var cardAdder: some View {
        return adjustCardNumber(by: 1, symbol: "+").disabled(cardNumber>=9)
        
    }
    
    var cardRemover: some View {
        
        return adjustCardNumber(by: -1, symbol: "-").disabled(cardNumber<=2)
        
    }
    
    var body: some View {
        LazyVGrid(columns: column) {
            ForEach(0..<cardNumber , id: \.self){
                index in
                CardView(emoji: emojis[index])
            }
        }
        .padding()
        
        HStack{
            cardAdder
            cardRemover
        }
    }
    
    func adjustCardNumber(by offset:Int, symbol: String) -> some View
    {
        
            return Button(action: {
                cardNumber=offset+cardNumber
            }, label: {
                
                ButtonView(tekst: symbol)
            })
        
    }
}








#Preview {
    ContentView()
}
