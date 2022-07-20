//
//  WinScreenOne.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 15/06/2022.
//

import SwiftUI

struct WinScreenOne: View {
    @ObservedObject var gamesManager : GamesManager
    
    var positiveMessage = ["Excellent", "Awesome", "You're getting good", "You're brilliant", "Perfect", "Very Good", "Good"]
    var positiveImage = ["feather"]
    
    var body: some View {
        ZStack (alignment: .top){
            Color.greenCorrectAnswerBackground
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Spacer()
                //LottieView(fileName: "checkmark").frame(width: 150, height: 150)
                    //.padding(.top, -40)
                Image(positiveImage.randomElement()!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                
                
                Spacer()
                VStack(alignment: .leading, spacing: 15){
                        
                    Text(positiveMessage.randomElement()!)
                            .font(.custom("Poppins-semibold", size: 18))
                            .foregroundColor(Color.greenGradient2)
                            
                        Spacer()
                    }
                .padding(.leading, -150)
                .padding(.top)
            }
                
            Button(action: {
                gamesManager.goToNextQuestion()
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
    static var gamesManager : GamesManager = GamesManager(questionsFile: "dataFile1")
    static var previews: some View {
        WinScreenOne(gamesManager: gamesManager)
    }
}
