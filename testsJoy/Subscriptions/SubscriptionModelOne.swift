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
                    NavigationLink(destination: EnglishAmericanLevelView(), label: {
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
            ScrollView(showsIndicators: false){
                VStack{
                    Image("chineseLang")
                        .resizable()
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 270, height: 270)
                        .multilineTextAlignment(.center)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        .padding()
                    Text("Be a smart learner with Joy")
                        .foregroundColor(.white)
                        .font(.custom("Poppins-SemiBold", size: 20))
                        .foregroundColor(.white)
                        .padding(.top, -30)
                        .padding(.bottom, 30)
                    ZStack{
                        Rectangle()
                            .fill(Color("blueMedium"))
                            .frame(width: 360)
                            .cornerRadius(20)
                        VStack{
                            Text("")
                            SubscriptionConditions(image: "heart",
                                                   title: "Unlimited hearts",
                                                   subtitle: "Learn at your own pace and never run out of hearts")
                                .padding()
                            SubscriptionConditions(image: "flag",
                                                   title: "Daily Challenges",
                                                   subtitle: "Learn at your own pace and never run out of hearts")
                                .padding()
                            SubscriptionConditions(image: "inteligencia-artificial",
                                                   title: "Prove your mastery",
                                                   subtitle: "Learn at your own pace and never run out of hearts")
                                .padding()
                            SubscriptionConditions(image: "block",
                                                   title: "No Ads",
                                                   subtitle: "Learn at your own pace and never run out of hearts")
                                .padding()
                            SubscriptionConditions(image: "crossword",
                                                   title: "Games and Puzzles",
                                                   subtitle: "Learn at your own pace and never run out of hearts")
                                .padding()
                            SubscriptionConditions(image: "youtube",
                                                   title: "Video Sessions",
                                                   subtitle: "Learn at your own pace and never run out of hearts")
                                .padding()
                                .padding(.bottom, 20)
                        }
                    }
                }
                Image("owl-cry")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .multilineTextAlignment(.center)
                    .padding(.top, 30)
                Text("Cancel your subscription anytime")
                    .foregroundColor(.white)
                    .font(.custom("Poppins-SemiBold", size: 20))
                    .padding(.top, 30)
                    .multilineTextAlignment(.center)
                    .frame(width: 270)
                    .padding(.bottom, 70)
            }
            
            VStack {
                Spacer()
                
                NavigationLink(destination: EnglishAmericanLevelView(),
                               
                               label: {
                    
                    ZStack{
                        Rectangle()
                            .fill(.white)
                            .frame(height: 80, alignment: .bottom)
                        
                        Text("Try for €0,00")
                            .foregroundColor(Color("blueDark"))
                            .font(.custom("Poppins-SemiBold", size: 17))
                        
                        
                    }
                    
                    
                })
                    
            }
            .ignoresSafeArea(.container)
        }
       
    }
}

struct SubscriptionModelOne_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionModelOne()
    }
}


