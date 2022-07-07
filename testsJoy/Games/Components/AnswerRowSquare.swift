//
//  AnswerRowSquare.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 07/06/2022.
//

import SwiftUI

struct AnswerRowSquare: View {
    @State private var isSelected = false
   
    
    var question : Question
    
    var allAnswers : Answer
    
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
            ZStack {
                Image(allAnswers.path)
                    .resizable()
                    .frame(width: 105, height: 125)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Text(allAnswers.text)
                    .font(.custom("Poppins-semibold", size: 14))
                    .foregroundColor(Color.black.opacity(0.5))
                    .padding(.top, 110)
                
                if isSelected {
                    Spacer()
                    Image(systemName: allAnswers.isCorrectAnswer ? "checkmark.circle.fill" : "x.circle.fill")
                        .foregroundColor(allAnswers.isCorrectAnswer ? Color.green : Color.red)
                }
            }
                
        }
        .onTapGesture(perform: {
            //se o user ainda não selecionou uma answer
            isSelected = true
            
            
        })
        
        
    }
}

struct AnswerRowSquare_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRowSquare(
                        question: Question.sampleQuestion,
                        allAnswers: Answer.allAnswer[0])
    }
}
