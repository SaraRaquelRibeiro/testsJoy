//
//  Challenges.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 04/07/2022.
//

import SwiftUI

struct Challenges: View {
    var challenge: DailyChallenge
    //var topedge : CGFloat
    //@Binding var offset : CGFloat
    var body: some View {
        ZStack (alignment: .center){
            ZStack{
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(challenge.color))
                    .frame(width: 195, height: 130)
                    .shadow(color: Color.black.opacity(0.2), radius: 6, x: 2, y: 5)
                
                VStack (alignment: .center) {
                    Text(challenge.title)
                        .font(.custom("Poppins-bold", size: 17))
                        .foregroundColor(.white)
                        
                        
                    Text(challenge.subtitle)
                        .font(.custom("Poppins-medium", size: 17))
                        .foregroundColor(.white)
                    
                    CapsuleButtons(color1: Color("pinkGradient1"),
                                   color2: Color("pinkGradient2"),
                                   width: 99,
                                   height: 39,
                                   text: "Get Now")
                }
                .padding(.trailing, -15)
            }
            .padding(.trailing, -170)
            Image(challenge.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(18)
                .frame(width: 195, height: 150)
                .padding(.leading, -170)
          
        }
    }
}

