//
//  ReachEnd.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 16/06/2022.
//

import SwiftUI

struct ReachEnd: View {
    //ligação à api e funcs no triviamanager mas em environment---> adicioná-lo la em baixo na preview
    
    @EnvironmentObject var triviaManager : TriviaManager
    
    @State var lottieFile = LottieView(fileName: "checkmark")
   
    var body: some View {
        
        //se o user chegar ao fim das perguntas
        //if triviaManager.reachedEnd {
            VStack(spacing: 20){
                Spacer()
                lottieFile
                    .frame(width: 350, height: 350)
               
                Spacer()
                Text ("Trivia Game")
                    .foregroundColor(Color.greenGradient2)
                    .font(.custom("Poppins-Bold", size: 20))
                
                Text("Congratulations!!!")
                    .foregroundColor(Color.greenGradient2)
                    .font(.custom("Poppins-Bold", size: 18))
                let score = triviaManager.score * 10
                let total = triviaManager.length * 10
                VStack{
                    
                    
                    //Text("You'll win $\(score) out of $\(total)")
                    Text("You Win $\(score) out of $\(total)")
                   
                }
                .foregroundColor(Color.greenGradient2)
                .font(.custom("Poppins-Bold", size: 20))
                
                Spacer()
                
                Button( "basic"){
                    lottieFile = LottieView(fileName: "coinsWin2")
                }
                
                Button {
                    //LottieView(fileName: "coinsWin2").frame(width: 100, height: 100)
                    Text("button was tapped")
                } label: {
                    ButtonCourses(text: "Get Coins", textColor: Color.white, shadowColor: Color.greenGradient1, background: Color.greenStrong)
                }
                  
                
                /*Button(action: {
                    Task.init{
                        await triviaManager.fetchTrivia()
                    }
                }, label: {
                    
                    ButtonCourses(text: "Next", textColor: Color.white, shadowColor: Color.greenGradient1, background: Color.greenStrong)
                        
                })*/
            }
            .foregroundColor(Color.white)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.1))
        //}
        //else {
            //QuestionView()
                .environmentObject(triviaManager)
        //}
        
    }
}

struct ReachEnd_Previews: PreviewProvider {
    static var previews: some View {
        ReachEnd()
            .environmentObject(TriviaManager())
    }
}
