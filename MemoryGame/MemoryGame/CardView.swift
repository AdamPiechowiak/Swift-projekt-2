//
//  CardView.swift
//  MemoryGame
//
//  Created by student on 17.10.2023.
//

import SwiftUI

struct CardView: View {
    
    @State var isFaceUp:Bool = true
    let emoji:String
    
    var body: some View {
        Group{
            if(isFaceUp)
            {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(.blue), lineWidth: 2)
                    .frame(width: 100.0, height: 100.0)
                
                    .overlay(
                        Text(emoji).font(.largeTitle)
                    )
            }
            else
            {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.blue)
                    .frame(width: 100.0, height: 100.0)
                    
                
                
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
        
            
            
    }
}

#Preview {
    CardView(emoji: "😡")
}
