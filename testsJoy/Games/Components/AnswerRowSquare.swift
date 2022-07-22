//
//  AnswerRowSquare.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 07/06/2022.
//

import SwiftUI

struct AnswerRowSquare: View {
    @State var isSelected = false
    //@Binding var isSelected : Bool
    @ObservedObject var gamesManager : GamesManager
    var answer : Answer
   
    var body: some View {
        ZStack() {
            
            RoundedRectangle(cornerRadius: 15)
                .fill(isSelected ? Color.blueGradient3.opacity(0.1) : Color(red: 255, green: 245, blue: 158))
                .frame(width: 130, height: 150)
                .foregroundColor(Color.white)
                .shadow(color: .gray.opacity(0.2), radius: 6, x: -2, y: 5)
                
            
            RoundedRectangle(cornerRadius: 15)
                .stroke(isSelected ? Color.blueGradient2 : .gray.opacity(0.2))
                .frame(width: 130, height: 150)
            ZStack {
                Image(answer.path)
                    .resizable()
                    .frame(width: 115, height: 138)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Text(answer.text)
                    .font(.custom("Poppins-semibold", size: 14))
                    .foregroundColor(Color.black.opacity(0.5))
                    .padding(.top, 110)
                
                if isSelected {
                    Spacer()
                    Image(systemName: answer.isCorrectAnswer ? "checkmark.circle.fill" : "x.circle.fill")
                        .foregroundColor(answer.isCorrectAnswer ? Color.green : Color.red)
                }
            }
                
        }
        .onTapGesture(perform: {
            //se o user ainda não selecionou uma answer
            isSelected = true
            gamesManager.selectedAnswer = answer
              
        })
    }
}

struct AnswerRowSquare_Previews: PreviewProvider {
    static var previews: some View {
        let gamesManager = GamesManager(questionsFile: "dataGame1")
        AnswerRowSquare(
            gamesManager: gamesManager,
            answer: gamesManager.questions[0].answers[0])
    }
}
