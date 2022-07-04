//
//  RightOrWrong.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/06/2022.
//

import SwiftUI

struct RightOrWrong: View {
    //colocar a ProgressaBar no topo com a cor da UNIT
    var unit : Unit
    var course : Course
    var vm = HomeVM()
    
    
    //*** criar as variáveisp fazer as chamadas
    
    @State var question : String
    
    @State var word : String
    
    
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
            
            
                
                //QUESTION
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
                            .frame(width: 40, height: 40)
                            .shadow(color: .gray.opacity(0.4), radius: 1, x: -1, y: 3)
                    })
                
                    Image("unit1clothes")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(40)
                        .frame(width: 160, height: 160)
                        
                    
                    Text(word)
                        .font(.custom("Poppins-semibold", size: 25))
                        .foregroundColor(Color.black.opacity(0.8))
                        .underline()
                
                
                HStack(alignment: .center, spacing: 50){
                    AnswerCircleRightWrong(rightOrWrong: "hand.thumbsdown.fill")
                    AnswerCircleRightWrong(rightOrWrong: "hand.thumbsup.fill")
                }
                .padding(40)
               
                
                ButtonCourses(text: "Verify",
                              textColor: Color.white,
                              shadowColor: Color.greenCorrectAnswerBackground,
                              background: Color.greenGradient1.opacity(0.8))
                }
            
            
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct RightOrWrong_Previews: PreviewProvider {
    static var vm = HomeVM()
    static var previews: some View {
        WordToImage(unit: vm.units[0],
                    course: vm.units[0].courses[0],
                    question: "Is this the right meaning?",
                    word: "Hair")
    }
}
