//
//  SubscriptionModelTwo.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 12/05/2022.
//

import SwiftUI

struct SubscriptionModelTwo: View {
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
                            .padding(15)
                    })
                    Spacer()
                    Text("Smart")
                        .bold()
                        .foregroundColor(Color.white)
                        .font(.custom("Poppins-Light", size: 16))
                        .frame(width: 80, height: 30)
                        //.background(Color.orangeGradient2)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.orangeGradient1, Color.orangeGradient2]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                        .padding(15)
                    
                }
                Spacer()
            }
            
                VStack{
                   
                    Text("14-day Free Trial")
                        .foregroundColor(.white)
                        .font(.custom("Poppins-Bold", size: 26))
                        .foregroundColor(.white)
                        .padding(.top, 190)
                        .padding(.bottom, 30)
                    
                    Image("studentHat")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 140, height:140)
                        .multilineTextAlignment(.center)
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    
                    
                    ZStack{
                        Rectangle()
                            .fill(Color("blueMedium"))
                            .frame(width: 360)
                            .cornerRadius(20)
                        VStack{
                            Text("")
                            SubscriptionConditions(image: "padlock",
                                                   title: "Today: Unlock Smart",
                                                   subtitle: "Maximize your learning with Joy")
                                .padding(.top, -30)
                           
                            SubscriptionConditions(image: "accepted",
                                                   title: "After 14 days: Trial ends",
                                                   subtitle: "Your account is charged and you can cancel it at anytime")
                                .padding(.top, 40)
                                .padding(.bottom, 10)
                        }
                    }
                }
            
            VStack {
                Spacer()
                
                NavigationLink(destination: EnglishAmericanMain(),
                               
                               label: {
                    
                    ZStack{
                        Rectangle()
                            .fill(.white)
                            .frame(height: 80, alignment: .bottom)
                        
                        Text("Try for FREE")
                            .foregroundColor(Color("blueDark"))
                            .font(.custom("Poppins-SemiBold", size: 17))
                        
                        
                    }
                    
                    
                })
                    
            }
            .ignoresSafeArea(.container)
        }
       
    }
    
}

struct SubscriptionModelTwo_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionModelTwo()
    }
}
