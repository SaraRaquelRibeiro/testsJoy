//
//  SwipeCorrectWord.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/06/2022.
//

import SwiftUI

struct SwipeCorrectWord: View {
    var body: some View {
        //QUESTION
        ZStack {
            VStack(alignment: .leading, spacing: 20){
                
                Text("question")
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
        }
        
        Text("word")
            .font(.custom("Poppins-semibold", size: 25))
            .foregroundColor(Color.black.opacity(0.8))
        
        
        //AnswerRowSquareGrid(imsgesTest: imagesTest)
            .padding(.bottom, 40)
       
        
        ButtonCourses(text: "Verify",
                      textColor: Color.white,
                      shadowColor: Color.greenCorrectAnswerBackground,
                      background: Color.greenGradient1.opacity(0.8))
            .padding(.bottom, -30)
        
        
    }
    
}

struct SwipeCorrectWord_Previews: PreviewProvider {
    static var previews: some View {
        SwipeCorrectWord()
    }
}
