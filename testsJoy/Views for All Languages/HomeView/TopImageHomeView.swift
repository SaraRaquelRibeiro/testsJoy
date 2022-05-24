//
//  TopImageHomeView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 24/05/2022.
//

import SwiftUI

struct TopImageHomeView: View {
    var body: some View {
        ZStack{
            Image("grid")
                .resizable()
                .scaledToFill()
                .clipped()
            
            
            VStack{
                Spacer()
                
                HStack{
                    Text("Learn faster than your friends")
                        .font(.custom("Poppins-Medium", size: 18))
                    
                    Image(systemName: "circle.fill")
                        .foregroundColor(.pink)
                        .font(.system(size: 6))
                    
                    Text("Win")
                        .font(.custom("Poppins-Medium", size: 18))
                    
                }
                
            }
            .padding(.bottom, 70)
            
            
           
        }
        .foregroundColor(.white)
        
    }
}

struct TopImageHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TopImageHomeView()
    }
}
