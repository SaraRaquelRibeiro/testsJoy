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
                   
                    Text("EnJoy and Learn")
                        .font(.custom("Poppins-Medium", size: 14))
                    
                    Spacer()
                        .frame(width: 5)
                    
                    Image(systemName: "circle.fill")
                        .foregroundColor(.orange)
                        .font(.system(size: 6))
                    
                }
                .padding(.leading, 140)
                .padding(.trailing, 140)
                .padding()
                
                
            }
            /*.background(LinearGradient(gradient:
                                        Gradient(
                                            colors: [Color.black.opacity(0.0), Color("blueDark").opacity(0.95)]),
                                       startPoint: .top,
                                       endPoint: .bottom))*/
            .background(LinearGradient(gradient:
                                        Gradient(
                                            stops: [.init(color: .black.opacity(0.0), location: 0.5),
                                                    .init(color: Color("blueMedium"), location: 1)]),
                                       startPoint: .top,
                                       endPoint: .bottom))
            
        }
        .foregroundColor(.white)
        
        
    }
}

struct TopImageHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TopImageHomeView()
    }
}
