//
//  FailScreenOne.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 15/06/2022.
//

import SwiftUI

struct FailScreenOne: View {
    @ObservedObject  var gamesManager : GamesManager
    var failImage = ["drop-down"]
    var body: some View {
        ZStack (alignment: .top){
            Color.pinkIncorrectAnswerBackground
                .edgesIgnoringSafeArea(.all)
            
            
            VStack (alignment: .center){
                Image(failImage.randomElement()!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.top)
               
                    
                VStack(alignment: .leading, spacing: 10){
                        
                        Text("Incorrect")
                            .font(.custom("Poppins-semibold", size: 18))
                            .foregroundColor(Color.pinkIncorrectAnswerText)
                            .padding(.bottom, 5)
                        
                    HStack {
                        Text("Correct Answer:")
                                    .font(.custom("Poppins-regular", size: 14))
                                .foregroundColor(Color.pinkIncorrectAnswerText)
                        
                        Text("bbb")
                            .font(.custom("Poppins-medium", size: 16))
                            .foregroundColor(Color.pinkIncorrectAnswerText)
                    }
                        Spacer()
                    }
                .padding(.leading, -130)
                
            }
            .padding()
                
            Button(action: {
                
                gamesManager.goToNextQuestion()
            }, label: {
                ButtonCourses(text: "Next",
                              textColor: Color.pinkIncorrectAnswerText,
                              shadowColor: Color.pinkIncorrectAnswerText,
                              background: Color.white)
            })
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom, 80)
                //.disabled(gamesManager.selectedAnswer == nil)
        }
        .animation(.none)
    }
}

struct FailScreenOne_Previews: PreviewProvider {
    static var gamesManager : GamesManager = GamesManager(questionsFile: "dataGame1")
    static var previews: some View {
        FailScreenOne(gamesManager: gamesManager)
    }
}
