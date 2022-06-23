//
//  AnswerRowSquare.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 07/06/2022.
//

import SwiftUI

struct AnswerRowSquare: View {
    @State private var isSelected = false
    
    //TEST das imagens
    var imageTest : ImageTest
    
    var body: some View {
        ZStack() {
            
            RoundedRectangle(cornerRadius: 15)
                .fill(isSelected ? Color.blueGradient3.opacity(0.1) : Color(red: 255, green: 245, blue: 158))
                .frame(width: 115, height: 135)
                .foregroundColor(Color.white)
                .shadow(color: .gray.opacity(0.2), radius: 6, x: -2, y: 5)
            
            RoundedRectangle(cornerRadius: 15)
                .stroke(isSelected ? Color.blueGradient2 : .gray.opacity(0.2))
                .frame(width: 115, height: 135)
            Image(imageTest.name)
                .resizable()
                .frame(width: 105, height: 125)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                
        }
        .onTapGesture(perform: {
            //se o user ainda não selecionou uma answer
           isSelected = true
        })
        
        
    }
}

struct AnswerRowSquare_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRowSquare(imageTest: exampleImages2)
    }
}
