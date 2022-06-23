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
            
            Image("grid2")
                .resizable()
                .scaledToFill()
                .clipped()
                .shadow(color: Color.black.opacity(0.2), radius: 1, y: 2)
            
            
            
          
            /*Rectangle()
                .background(LinearGradient(gradient:
                                            Gradient(
                                                stops: [.init(color: .black.opacity(0.0), location: 0.5),
                                                        .init(color: Color.blue, location: 1)]),
                                           startPoint: .top,
                                           endPoint: .bottom)
                                )
                .opacity(0.4)*/
            
            
            
            /*.background(LinearGradient(gradient:
                                        Gradient(
                                            stops: [.init(color: .black.opacity(0.0), location: 0.5),
                                                    .init(color: Color("blueMedium"), location: 1)]),
                                       startPoint: .top,
                                       endPoint: .bottom)
                            )
            .opacity(0.9)*/
        }
        .foregroundColor(.white)
        
        
    }
}

struct TopImageHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TopImageHomeView()
    }
}
