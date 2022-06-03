//
//  Onboarding.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/04/2022.
//

import Foundation
import SwiftUI


//Onboarding

struct OnboardingView: View {
    
    
    var body: some View{
        
        NavigationView{
            
            TabView{
                
                PageView(
                    title: "Practical and Fun Lessons.",
                    subtitle: "Lessons that work for you,so you can learn and memorize while having fun.",
                    imageName: "onboarding1",
                    showsDismissButton: false
                )
                    .tag(0)
                    
                PageView(
                    title: "Play and EnJoy.",
                    subtitle: "Quizes, Daily Challenges",
                    imageName: "onboarding4",
                    showsDismissButton: true
                )
                    .tag(1)
                    
                    
                /*PageView(
                    title: "Learn Languages" ,
                    subtitle: "",
                    imageName: "onboarding3",
                    showsDismissButton: true,
                    shouldShowOnboarding: $shouldShowOnboarding)*/
                    
            }
            //p fazer swipe nos onboardings
            .tabViewStyle(PageTabViewStyle())
            .background(LinearGradient(
                gradient: Gradient(colors:[
                    Color.orangeGradient1,
                    Color.orangeGradient2
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea(.all, edges: .all))
        }
   
        
        
    }
    
}


struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showsDismissButton: Bool
    
    var body: some View {
        VStack{
            if showsDismissButton {
                
                /*Button(action: {
                                   //quando se clica no botão ele faz toggle ou seja desaparece
                                   shouldShowOnboarding.toggle()
                                   
                               }, label: {
                                   Text("Learn Languages")
                                       .bold()
                                       .foregroundColor(Color.orange)
                                       .frame(width: 200, height: 50)
                                       .background(Color.white)
                                       .cornerRadius(40)
                               })*/
                    NavigationLink(destination: GetStartedView(),
                        label: {
                        Text("Learn Languages")
                            .bold()
                            .foregroundColor(Color.orange)
                            .frame(width: 200, height: 50)
                            .background(Color.white)
                            .cornerRadius(40)
                    })
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                    
                
            }
            
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .multilineTextAlignment(.center)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .padding()
            
            Text(title)
                //.font(.system(size: 35))
                .foregroundColor(.white)
                //.lineSpacing(-200)
                .font(.custom("Poppins-Bold", size: 29))
                
            
            Text(subtitle)
                //.font(.system(size: 30))
                .foregroundColor(Color(.white))
                .font(Font.custom("Poppins-Light", size: 20))
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}


/*struct OnboardingView: View {
    
    
    var body: some View{
        TabView{
            
            PageView(
                title: "Practical and Fun Lessons.",
                subtitle: "Lessons that work for you,so you can learn and memorize while having fun.",
                imageName: "onboarding1",
                showsDismissButton: false
            )
                
                
                
            PageView(
                title: "Play and EnJoy.",
                subtitle: "Quizes, Daily Challenges",
                imageName: "onboarding4",
                showsDismissButton: true
            )
                
                
            /*PageView(
                title: "Learn Languages" ,
                subtitle: "",
                imageName: "onboarding3",
                showsDismissButton: true,
                shouldShowOnboarding: $shouldShowOnboarding)*/
                
        }
        //p fazer swipe nos onboardings
        .tabViewStyle(PageTabViewStyle())
        .background(LinearGradient(gradient: Gradient(colors:[
            Color.orangeGradient1,
            Color.orangeGradient2
        ]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                        .ignoresSafeArea(.all, edges: .all))
        
        
    }
    
}*/

/*struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showsDismissButton: Bool
    
    var body: some View {
        VStack{
            if showsDismissButton {
                
                /*Button(action: {
                                   //quando se clica no botão ele faz toggle ou seja desaparece
                                   shouldShowOnboarding.toggle()
                                   
                               }, label: {
                                   Text("Learn Languages")
                                       .bold()
                                       .foregroundColor(Color.orange)
                                       .frame(width: 200, height: 50)
                                       .background(Color.white)
                                       .cornerRadius(40)
                               })*/

                NavigationView{
                    NavigationLink(destination: GetStartedView(),
                        label: {
                        Text("Learn Languages")
                            .bold()
                            .foregroundColor(Color.orange)
                            .frame(width: 200, height: 50)
                            .background(Color.white)
                            .cornerRadius(40)
                    })
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                    
                }
            }
            
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .multilineTextAlignment(.center)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .padding()
            
            Text(title)
                //.font(.system(size: 35))
                .foregroundColor(.white)
                //.lineSpacing(-200)
                .font(.custom("Poppins-Bold", size: 29))
                
            
            Text(subtitle)
                //.font(.system(size: 30))
                .foregroundColor(Color(.white))
                .font(Font.custom("Poppins-Light", size: 20))
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}*/
