//
//  WinOrFailScreen.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 14/06/2022.
//

import SwiftUI

struct WinOrFailScreen: View {
    
    var text: String
    var textCorrectAnswer: String
    //meter aqui a correct answer caso o user tenha errado
    var correctAnswer : String
    var textColor: Color
    var backgroundColor: Color
    
    var answer: Answer
    
    @EnvironmentObject var triviaManager : TriviaManager
    
    @State private var isSelected = false
    
    @Binding var isShowing : Bool
    
    var body: some View {
        ZStack (alignment: .top){
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            
                VStack(alignment: .leading, spacing: 15){
                    
                    Text(text)
                        .font(.custom("Poppins-semibold", size: 22))
                        .foregroundColor(textColor)
                    
                        Text(textCorrectAnswer)
                            .font(.custom("Poppins-regular", size: 18))
                            .foregroundColor(textColor)
                            
                        Text(correctAnswer)
                            .font(.custom("Poppins-medium", size: 20))
                            .foregroundColor(textColor)
                }
                .padding(.leading, -100)
                
            Button(action: {
                triviaManager.goToNextQuestion()
                //***quando clico check quero verificar se a answer está correta ou não e aí salto para o ecrã do win or fail
                
                
            }, label: {
                ButtonCourses(text: "Next",
                              textColor: answer.isCorrect ? Color.green : Color.red.opacity(0.7),
                              shadowColor: answer.isCorrect ? Color.greenCorrectAnswerBackground : Color.red.opacity(0.7),
                              background: Color.white)
            })
                 .frame(maxHeight: .infinity, alignment: .bottom)
            
            
            
            
            
            
        }
    }
}

struct WinOrFailScreen_Previews: PreviewProvider {
    static var previews: some View {
        WinOrFailScreen(text: "Incorrect answer",
                        textCorrectAnswer: "The correct answer is:",
                        correctAnswer: "bla bla bla ",
                        textColor: Color.pinkIncorrectAnswerText,
                        backgroundColor: Color.pinkIncorrectAnswerBackground,
                        answer: Answer(text: "", isCorrect: false),
                        isShowing: .constant(true))
    }
}
