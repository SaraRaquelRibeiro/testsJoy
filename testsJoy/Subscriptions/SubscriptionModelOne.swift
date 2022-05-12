//
//  SubscriptionModelOne.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 12/05/2022.
//

import SwiftUI

struct SubscriptionModelOne: View {
    var body: some View {
        ZStack{
            Color("blueDark")
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    NavigationLink(destination: EnglishAmericanMain(), label: {
                        Text("No thanks")
                            .font(.custom("Poppins-REGULAR", size: 16))
                            .foregroundColor(.white)
                            .opacity(0.5)
                    })
                    
                    Text("Smart")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 90, height: 30)
                        //.background(Color.orangeGradient2)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.orangeGradient1, Color.orangeGradient2]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                    
                }
                Spacer()
            }
           
            
            ScrollView(showsIndicators: false){
                
                
            }
            
            
        }
    }
}

struct SubscriptionModelOne_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionModelOne()
    }
}
