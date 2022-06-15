//
//  FailScreenOne.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 15/06/2022.
//

import SwiftUI

struct FailScreenOne: View {
    
    var answer: Answer
    
    //meter aqui a correct answer caso o user tenha errado
    var correctAnswer : String
    
    @EnvironmentObject var triviaManager : TriviaManager
    
    var body: some View {
        ZStack (alignment: .top){
            Color.pinkIncorrectAnswerBackground
                .edgesIgnoringSafeArea(.all)
            
            
                VStack(alignment: .leading, spacing: 15){
                    Spacer()
                    
                    Text("Incorrect")
                        .font(.custom("Poppins-semibold", size: 22))
                        .foregroundColor(Color.pinkIncorrectAnswerText)
                        .padding(.bottom, 20)
                    
                        Text("Correct Answer:")
                            .font(.custom("Poppins-regular", size: 18))
                            .foregroundColor(Color.pinkIncorrectAnswerText)
                            
                        Text(correctAnswer)
                            .font(.custom("Poppins-medium", size: 20))
                            .foregroundColor(Color.pinkIncorrectAnswerText)
                    Spacer()
                }
                .padding(.leading, -100)
                
                
            Button(action: {
                triviaManager.goToNextQuestion()
                //***quando clico check quero verificar se a answer está correta ou não e aí salto para o ecrã do win or fail
                
                
            }, label: {
                ButtonCourses(text: "Next",
                              textColor: Color.pinkIncorrectAnswerText,
                              shadowColor: Color.pinkIncorrectAnswerText,
                              background: Color.white)
            })
                 .frame(maxHeight: .infinity, alignment: .bottom)
            
        }
    }
}

struct FailScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        FailScreenOne(answer: Answer(text: "", isCorrect: true),
                      correctAnswer: "")
    }
}
