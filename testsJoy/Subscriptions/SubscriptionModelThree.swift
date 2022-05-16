//
//  SubscriptionModelThree.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 12/05/2022.
//

import SwiftUI

struct SubscriptionModelThree: View {
    
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    
    var body: some View {
        ZStack{
            Color("blueDark")
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    NavigationLink(destination: EnglishAmericanMain(), label: {
                        Image(systemName: "xmark")
                            .font(.custom("Poppins-Bold", size: 16))
                            .foregroundColor(.white)
                            .opacity(0.5)
                            .padding(25)
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
                    
                    VStack (alignment: .leading) {
                        HStack {
                            Image("accepted")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height:30)
                                .padding(.leading, -10)
                            Text("Master a new language")
                                .font(.custom("Poppins-Bold", size: 22))
                                .foregroundColor(.white)
                                .padding(.leading, 10)
                        }
                        .padding(.top, 70)
                        
                        HStack {
                            Image("accepted")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height:30)
                                .padding(.leading, -10)
                            Text("Maximize your knowledge")
                                .font(.custom("Poppins-Bold", size: 22))
                                .foregroundColor(.white)
                                .padding(.leading, 10)
                        }
                        .padding(.top, 10)
                    }
                    
                    
                    Text("Choose a Plan after 14-day Free Trial")
                        .font(.custom("Poppins-Bold", size: 26))
                        .foregroundColor(.white)
                        .padding(.leading, 10)
                        .frame(width: 290)
                        .multilineTextAlignment(.center)
                        .padding(.top, 20)
                    
                    Spacer()
                    
                    VStack{
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 30)
                                .fill(LinearGradient(gradient: Gradient(colors:[
                                    Color.orangeGradient1,
                                    Color.orangeGradient2
                                ]),
                                                           startPoint: .bottomTrailing,
                                                     endPoint: .topLeading))
                                .frame(width: 355, height: 150)
                                .shadow(color: Color.black.opacity(0.3), radius: 1, y: 5)
                            
                            ButtonTrial(isSelected: $isSelected1,
                                        color2: .greenGradient2,
                                        color1: .greenGradient1,
                                        textTitle: "Individual",
                                        conditions: "12 months: €65.99",
                                        price: "€5.67 / MO",
                                        textTag: "Most Popular")
                            
                        }
                        .padding(.top, 30)
                        
                        Spacer()
                        
                        ButtonTrial(isSelected: $isSelected2,
                                    color2: Color("blueMedium"),
                                    color1: Color("blueLight"),
                                    textTitle: "Standard",
                                    conditions: "12 months: €65.99",
                                    price: "€5.67 / MO",
                                    textTag: "Most Popular")
                            .padding(.top, -60)
                        
                        Spacer()
                        
                    }
                    
                }
            
           
            
            VStack {
                Spacer()
                
                Text("Cancel your subscription anytime")
                    .font(.custom("Poppins-Medium", size: 16))
                    .foregroundColor(.white)
                
                
                
                NavigationLink(destination: EnglishAmericanMain(),
                               label: {
                    ZStack{
                        Text("Start 14-day Free Trial")
                            .bold()
                            .foregroundColor(Color("blueDark"))
                            .frame(width: 270, height: 50)
                            //.background(Color.orangeGradient2)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.blue.opacity(0.4), radius: 1, y: 5)
                    }
                })
            }
            
        }
       
    }
}

struct SubscriptionModelThree_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionModelThree()
    }
}
