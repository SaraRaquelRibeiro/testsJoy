//
//  WinScreenOne.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 15/06/2022.
//

import SwiftUI

struct WinScreenOne: View {
    
    var answer: Answer
    
    @EnvironmentObject var triviaManager : TriviaManager
    
    var positiveMessage = ["Excellent", "Awesome", "You're getting good", "You're brilliant", "Perfect", "Very Good", "Good"]
    //meter aqui a correct answer caso o user tenha errado
    var correctAnswer : String
    
    //@EnvironmentObject var triviaManager : TriviaManager
    //@Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack (alignment: .top){
            Color.greenCorrectAnswerBackground
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Spacer()
                LottieView(fileName: "checkmark").frame(width: 150, height: 150)
                    .padding(.top, -40)
                Spacer()
                VStack(alignment: .leading, spacing: 15){
                        
                    Text(positiveMessage.randomElement()!)
                            .font(.custom("Poppins-semibold", size: 18))
                            .foregroundColor(Color.greenGradient2)
                            .padding(.bottom, 20)
                        
                                
                            Text(correctAnswer)
                                .font(.custom("Poppins-medium", size: 14))
                                .foregroundColor(Color.greenGradient2)
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
                              textColor: Color.greenGradient2,
                              shadowColor: Color.greenGradient2.opacity(0.4),
                              background: Color.white)
            })
                 .frame(maxHeight: .infinity, alignment: .bottom)
                 .padding(.bottom, 80)
            
        }
    }
}

struct WinScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        WinScreenOne(answer: Answer(text: "", isCorrect: true), correctAnswer: "")
    }
}
