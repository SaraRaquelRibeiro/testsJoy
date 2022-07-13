//
//  RightOrWrong.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/06/2022.
//

import SwiftUI

struct RightOrWrong: View {
    @State private var isSelected = false
    @State var gamesManager : GamesManager
    @State var showSheet: Bool = false
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Spacer()
            Text(gamesManager.currentQuestion!.question)
                .font(.custom("Poppins-medium", size: 20))
                .foregroundColor(Color.black.opacity(0.6))
            
            Button(action: {
                
            }, label: {
                Image(systemName: "speaker.zzz.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.blueGradient2)
                    .font(.caption)
                    .frame(width: 40, height: 40)
                    .shadow(color: .gray.opacity(0.4), radius: 1, x: -1, y: 3)
            })
        
            Image("unit1clothes")
                .resizable()
                .scaledToFit()
                .cornerRadius(40)
                .frame(width: 160, height: 160)
                
            
            Text(gamesManager.currentQuestion!.word)
                .font(.custom("Poppins-semibold", size: 25))
                .foregroundColor(Color.black.opacity(0.8))
                .underline()
        
        
        HStack(alignment: .center, spacing: 50){
            AnswerCircleRightWrong(rightOrWrong: "hand.thumbsdown.fill")
            AnswerCircleRightWrong(rightOrWrong: "hand.thumbsup.fill")
        }
        .padding(40)
        }
    }
}

struct RightOrWrong_Previews: PreviewProvider {
    static var gamesManager = GamesManager(questionsFile: "dataGame1")
    static var previews: some View {
        RightOrWrong(gamesManager: gamesManager)
    }
}
