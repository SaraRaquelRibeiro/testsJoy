//
//  AnswerRowRectangle.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 08/06/2022.
//

import SwiftUI

struct AnswerRowRectangle: View {
    
    var answer: AnswerTrivia
    @State private var isSelected = false
    
    //connection à api e funcs no triviamanager mas em environment---> adicioná-lo la em baixo na preview
    @EnvironmentObject var triviaManager : TriviaManager
    
    var body: some View {
        
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isSelected ? Color.blueGradient3.opacity(0.1) : Color(red: 255, green: 245, blue: 158))
                .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
                .multilineTextAlignment(.leading)
                .shadow(color: .gray.opacity(0.3), radius: 6, x: -2, y: 5)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .onTapGesture(perform: {
                    
                    //se o user ainda não selecionou uma answer
                    if !triviaManager.answerSelected{
                        isSelected = true
                        triviaManager.selectAnswer(answer: answer)
                        
                    }
                })
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected ? Color.blueGradient2 : .gray.opacity(0.2))
                .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
            HStack(spacing: 20) {
                
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.text)
                    .bold()
                
                if isSelected {
                    Spacer()
                    Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                        .foregroundColor(answer.isCorrect ? Color.green : Color.red)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(triviaManager.answerSelected ? (isSelected ? Color.blueGradient2 : .gray) : Color.blueGradient2)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
        }
        
    }
}

struct AnswerRowRectangle_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRowRectangle(answer: AnswerTrivia(text: "Single", isCorrect: false))
            .environmentObject(TriviaManager())
    }
}
