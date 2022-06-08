//
//  AnswerRowSquare.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 07/06/2022.
//

import SwiftUI

struct AnswerRowSquare: View {
    var body: some View {
        ZStack() {
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 120, height: 120)
                .foregroundColor(Color.white)
                .shadow(color: .gray.opacity(0.2), radius: 6, x: -2, y: 5)
            
            Text("resposta")
                .bold()
        }
        
        
    }
}

struct AnswerRowSquare_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRowSquare()
    }
}
