//
//  GameSelectByImage.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/06/2022.
//

import SwiftUI


struct GameSelectByImage: View {

    @State private var isSelected = false
    @ObservedObject var gamesManager : GamesManager
    @State var showSheet: Bool = false
    @State private var sheetMode : SheetMode = .quarter
    
    var body: some View {
        
            
                VStack {
                    Text(gamesManager.currentQuestion!.question)
                        .font(.custom("Poppins-medium", size: 20))
                    .foregroundColor(Color.black.opacity(0.6))
                    
                    Button(action: {
                    }, label: {
                        Image(systemName: gamesManager.currentQuestion!.soundImageName)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.blueGradient2)
                            .font(.caption)
                            .frame(width: 42, height: 42)
                            .shadow(color: .gray.opacity(0.4), radius: 1, x: -1, y: 3)
                    })
                
                    Text(gamesManager.currentQuestion!.word)
                    .font(.custom("Poppins-semibold", size: 25))
                    .foregroundColor(Color.black.opacity(0.8))
                    .underline()
              
                    AnswerRowSquareGrid(
                        gamesManager: gamesManager,
                        question: gamesManager.currentQuestion!)
                    
                        
                }
                .padding(.bottom)
    }
}

struct GameSelectByImage_Previews: PreviewProvider {
    static var gamesManager = GamesManager(questionsFile: "dataGame1")
    static var previews: some View {
        GameSelectByImage(
                          gamesManager: GamesManager(questionsFile: "dataGame1"))
            
    }
}
