//
//  SubscriptionConditions.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 13/05/2022.
//

import SwiftUI

struct SubscriptionConditions: View {
    
    @State var image : String
    @State var title : String
    @State var subtitle : String
    
    var body: some View {
    
            HStack{
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height:35)
                            .multilineTextAlignment(.center)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                            .padding(.leading, -13)
                        
                        VStack(alignment: .leading){
                            
                            HStack{
                                Text(title)
                                    .foregroundColor(.white)
                                    .font(.custom("Poppins-SemiBold", size: 19))
                                    .opacity(0.9)
                                    
                            }
                            
                            
                            
                            Text(subtitle)
                                .foregroundColor(.white)
                                .font(.custom("Poppins-Light", size: 14))
                                .opacity(0.9)
                                .multilineTextAlignment(.leading)
                                .frame(width: 270)
                        }
                        .padding(.leading, 15)
                
            }   
    }
}

struct SubscriptionConditions_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SubscriptionConditions(image: "heart", title: "Unlimited hearts", subtitle: "Learn at your own pace and never run out of hearts")
            SubscriptionConditions(image: "heart", title: "Unlimited hearts", subtitle: "Learn at your own pace and never run out of hearts")
            SubscriptionConditions(image: "heart", title: "Unlimited hearts", subtitle: "Learn at your own pace and never run out of hearts")
        }
    }
}
