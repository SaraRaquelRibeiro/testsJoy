//
//  AnswerRowRectangle.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 08/06/2022.
//

import SwiftUI

struct AnswerRowRectangle: View {
    
    var answer: Answer
    @State private var isSelected = false
    
    //connection à api e funcs no triviamanager mas em environment---> adicioná-lo la em baixo na preview
    @EnvironmentObject var triviaManager : TriviaManager
    
    var body: some View {
        
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isSelected ? Color.blueGradient3.opacity(0.1) : Color(red: 255, green: 245, blue: 158))
                .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
                .multilineTextAlignment(.leading)
            
                //.background(isSelected ? Color.blueGradient3.opacity(0.2) : .white)
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
                .stroke(isSelected ? (answer.isCorrect ? Color.greenGradient1: .red.opacity(0.5)) : .gray.opacity(0.2))
                .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
            
            HStack(spacing: 20) {
                
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.text)
                    .bold()
                
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(triviaManager.answerSelected ? (isSelected ? Color.orangeGradient2 : .gray) : Color.orangeGradient2)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            
            
            /*if isSelected {
                
                if answer.isCorrect {
                    HStack{
                        Text("you're awesome")
                    }
                    .frame(maxWidth: .infinity, maxHeight: 80, alignment: .leading)
                    .background(.green)
                    
                } else {
                    
                        Text("you're awesome")
                            .foregroundColor(Color.greenGradient2)
                            .font(.custom("Poppins-Bold", size: 25))
                    
                    
                }
            }*/
        }
        
        /*HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected {
                
                
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(triviaManager.answerSelected ? (isSelected ? Color.orangeGradient2 : .gray) : Color.orangeGradient2)
        //.background(triviaManager.answerSelected ? (isSelected ? Color.blueLight : .green) : Color.white)
        .background(isSelected ? Color.blueGradient3.opacity(0.2) : .white)
        .cornerRadius(10)
        .shadow(color: .gray.opacity(0.3), radius: 6, x: -2, y: 5)
        //.stroke(isSelected ? Color.orangeGradient2.opacity(0.7) : Color.black.opacity(0.7), style: StrokeStyle(lineWidth: 5.5))
        
        .onTapGesture(perform: {
            //se o user ainda não selecionou uma answer
            if !triviaManager.answerSelected{
                isSelected = true
                triviaManager.selectAnswer(answer: answer)
            }
        })*/
    }
}

struct AnswerRowRectangle_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRowRectangle(answer: Answer(text: "Single", isCorrect: false))
            .environmentObject(TriviaManager())
    }
}
