//
//  DailyChallengesCell.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 31/05/2022.
//

import SwiftUI

struct DailyChallengesCell: View {
    
    var dailyChallenge : DailyChallenge
    
    let colors : [Color] = [.pink, .yellow, .blue, .white, .orange, .red, .indigo, .mint]
    
    var body: some View {
        
        
        HStack {
            /*ZStack {
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 140, height: 50)
                        .shadow(color: Color.black.opacity(0.1), radius: 1, y: 5)
                    
                    Image(dailyChallenge.image)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                        .overlay(Circle()
                                    .stroke(lineWidth: 4.0)
                                    .foregroundColor(Color(dailyChallenge.color))
                        )
                        .padding(.leading, -75)
                    
                    Text(dailyChallenge.name)
                        .font(.custom("Poppins-medium", size: 13))
                        .opacity(0.7)
                        .frame(width: 120, height: 70)
                        .foregroundColor(Color(dailyChallenge.color))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, -40)
                
                Image(dailyChallenge.win)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .offset(x: 69, y: 15)
            }*/
            
            Image(dailyChallenge.image)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 70, height: 70)
                .overlay(Circle()
                            .stroke(lineWidth: 2.0)
                            .foregroundColor(Color(dailyChallenge.color))
                            .shadow(color: Color.black.opacity(0.2), radius: 2, y: 3)
                )
                .padding(.leading, -75)
            
            
            Image(dailyChallenge.win)
                .resizable()
                .frame(width: 25, height: 25)
                .offset(x: -25, y: 25)
            
        }
    }
}

struct DailyChallengesCell_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            DailyChallengesCell(dailyChallenge: dailyChallenge1)
                .frame(width: 165, height: 50)
                
        }
    }
}
