//
//  FailScreenOne.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 15/06/2022.
//

import SwiftUI

struct FailScreenOne: View {
    
    var answer: AnswerTrivia
    
    //meter aqui a correct answer caso o user tenha errado
    var correctAnswer : String
    
    @EnvironmentObject var triviaManager : TriviaManager
    
    //criar um array de pequenas imagens para aparecerem aleatoriamente
    
  
    
    var body: some View {
        ZStack (alignment: .top){
            Color.pinkIncorrectAnswerBackground
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                //Spacer()
                LottieView(fileName: "fail").frame(width: 150, height: 150)
                    .padding(.top, -40)
                
                VStack(alignment: .leading, spacing: 10){
                        
                        Text("Incorrect")
                            .font(.custom("Poppins-semibold", size: 18))
                            .foregroundColor(Color.pinkIncorrectAnswerText)
                            .padding(.bottom, 5)
                        
                            Text("Correct Answer:")
                                .font(.custom("Poppins-regular", size: 14))
                                .foregroundColor(Color.pinkIncorrectAnswerText)
                                
                            Text(correctAnswer)
                                .font(.custom("Poppins-medium", size: 16))
                                .foregroundColor(Color.pinkIncorrectAnswerText)
                        Spacer()
                    }
                .padding(.leading, -150)
                .padding(.top, -50)
                
            }
                
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
                .padding(.bottom, 80)
                 
            
        }
        .animation(.none)
    }
}

struct FailScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        FailScreenOne(answer: AnswerTrivia(text: "", isCorrect: true),
                      correctAnswer: "")
    }
}
