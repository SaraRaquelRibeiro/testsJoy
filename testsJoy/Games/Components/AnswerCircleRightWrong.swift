//
//  AnswerCircleRightWrong.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 28/06/2022.
//

import SwiftUI

struct AnswerCircleRightWrong: View {
    @State private var isSelected = false
    
    var rightOrWrong : String
    
    var body: some View {
        ZStack {
            Circle()
                .fill(isSelected ? Color.blueGradient3.opacity(0.1) : Color(red: 255, green: 245, blue: 158))
                .frame(width: 80, height: 80)
                .foregroundColor(Color.white)
            .shadow(color: .gray.opacity(0.25), radius: 5, x: -2, y: 5)
            
            Circle()
                .stroke(isSelected ? Color.blueGradient2 : .gray.opacity(0.2))
                .frame(width: 80, height: 80)
            
            
            Image(systemName: rightOrWrong)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(Color.blueGradient3)
            
        }
        .onTapGesture(perform: {
            //se o user ainda não selecionou uma answer
           isSelected = true
        })
    }
}

struct AnswerCircleRightWrong_Previews: PreviewProvider {
    static var previews: some View {
        AnswerCircleRightWrong(rightOrWrong: "hand.thumbsup.fill")
        
    }
}
