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
    
    @State var question : String
    
    @State var word : String
    
    var imagesTest: [ImageTest]
    
    //@EnvironmentObject var jsonManager : JsonManager
    
    //var answer: Answer
    @State private var isSelected = false
    
    var unit : Unit
    var course : Course
    
    var body: some View {
       
        ZStack (alignment: .top) {
            Rectangle()
                .foregroundColor(.white)

            ZStack {
                Rectangle()
                    .fill(Color("\(unit.color)").opacity(0.8))
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 180, alignment: .top)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    
                    HStack {
                        Image(systemName: "chevron.backward")
                            .font(.custom("Poppins-Bold", size: 25))
                            .foregroundColor(Color.white.opacity(0.5))
                            .padding(.leading, 20)
                            .padding(.bottom, 55)
                        TopRowBtns(logo: "", languageFlag: "1")
                            .padding(.leading, -50)
                            .padding(.top, 400)
                    }
                    Divider()
                        .padding(.top, -200)
                    
                    HStack{
                        
                        Text("1/10")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.trailing, 30)
                        
                        ProgressBar(progress: 30)
                    }
                    .padding(.top, -180)
                        
                }
            }
            .padding(.top, -145)
            
           
            VStack(alignment: .center, spacing: 20){
                Spacer()
                Text(question)
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
            
            
            Text(word)
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
        GameSelectByImage(question: "What is the meaning?",
                          word: "Water",
                          imagesTest: exampleImages,
                          unit: vm.units[0],
                          course: vm.units[0].courses[0])
                            //.environmentObject(JsonManager())
            
    }
}
