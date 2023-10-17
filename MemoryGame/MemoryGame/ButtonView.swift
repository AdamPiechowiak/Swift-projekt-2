//
//  ButtonView.swift
//  MemoryGame
//
//  Created by student on 17.10.2023.
//

import SwiftUI


struct ButtonView: View {
    
    let tekst:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color(.blue), lineWidth: 2)
            .frame(width: 40.0, height: 20.0)
        
            .overlay(
                Text(tekst)
            )
    }
}

#Preview {
    ButtonView(tekst: "+")
}
