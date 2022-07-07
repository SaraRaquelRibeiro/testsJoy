//
//  CompleteWord.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/06/2022.
//

import SwiftUI

struct CompleteWord: View {
    //*** criar as variáveisp fazer as chamadas
    
    @State var question : String
    
    @State var word1 : String
    @State var word2 : String
    
    var imageTest : ImageTest
    
    var body: some View {
        ZStack{
            //menu do topo
            topRowButtons()
                .padding(.top, -130)
            
            VStack(alignment: .center){
                
                //QUESTION
                VStack(alignment: .leading, spacing: 20){
                    
                    Text(question)
                        .font(.custom("Poppins-medium", size: 20))
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding(.top, -40)
                    
                    
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
                }
                
                //AnswerRowSquare(imageTest: imageTest)
                
                /*Text(word)
                    .font(.custom("Poppins-semibold", size: 25))
                    .foregroundColor(Color.black.opacity(0.8))
                
                
                AnswerRowSquareGrid(imsgesTest: imagesTest)
                    .padding(.bottom, 40)*/
               
                
                ButtonCourses(text: "Verify",
                              textColor: Color.white,
                              shadowColor: Color.greenCorrectAnswerBackground,
                              background: Color.greenGradient1.opacity(0.8))
                    .padding(.bottom, -30)
                
                
            }
            
            //BOTTOM
            VStack(){
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.blueGradient3, Color.blueGradient2]), startPoint: .leading, endPoint: .bottom))
                        .frame(height: 80, alignment: .bottom)
                    
                    HStack{
                        
                        Text("1/10")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.trailing, 30)
                        
                        ProgressBar(progress: 30)
                    }
                }
                
            }
            .ignoresSafeArea(.container)
            
        }
        .navigationBarHidden(true)
        
    }
}

struct CompleteWord_Previews: PreviewProvider {
    static var previews: some View {
        CompleteWord(question: "Complete the Word",
                     word1: "its",
                     word2: "fru",
                     imageTest: exampleImages1)
    }
}
