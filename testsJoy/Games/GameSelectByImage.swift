//
//  GameSelectByImage.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/06/2022.
//

import SwiftUI


//******* jogo em que aparecem 4 imagens para selecionar a correcta
struct GameSelectByImage: View {
    
    //*** criar as variáveisp fazer as chamadas
    
    
    var imagesTest: [ImageTest]
    
    static var vm = HomeVM()
    
    //var answer: Answer
    @State private var isSelected = false
    
    var unit : Unit
    var course : Course
    
    @State var gamesManager : GamesManager
    
    var body: some View {
       
        ZStack (alignment: .top) {
            Rectangle()
                .foregroundColor(.white)

            GameView(unit: unit, course: course)
            .padding(.top, -145)
            
           
            VStack(alignment: .center, spacing: 20){
                Spacer()
                
                
                Text(gamesManager.questionsFile)
                    .font(.custom("Poppins-medium", size: 20))
                    .foregroundColor(Color.black.opacity(0.6))
                
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "speaker.zzz.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.blueGradient2)
                        .font(.caption)
                        .frame(width: 42, height: 42)
                        .shadow(color: .gray.opacity(0.4), radius: 1, x: -1, y: 3)
                })
            
            
            Text("fff")
                .font(.custom("Poppins-semibold", size: 25))
                .foregroundColor(Color.black.opacity(0.8))
                .underline()
            
            
            AnswerRowSquareGrid(imsgesTest: imagesTest)
                .padding(.bottom, 20)
           
            
            ButtonCourses(text: "Verify",
                          textColor: Color.white,
                          shadowColor: Color.greenCorrectAnswerBackground,
                          background: Color.greenGradient1.opacity(0.8))
                .padding(.bottom, 40)
            
            }
            .padding(.bottom, -40)
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct GameSelectByImage_Previews: PreviewProvider {
    static var vm = HomeVM()
    static var previews: some View {
        GameSelectByImage(imagesTest: exampleImages,
                          unit: vm.units[0],
                          course: vm.units[0].courses[0],
                          gamesManager: GamesManager(questionsFile: "dataGame1"))
            
    }
}
