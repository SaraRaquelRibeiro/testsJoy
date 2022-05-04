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
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View{
        TabView{
            //LinearGradient(gradient: Gradient(colors:[Color.red, Color.blue]),
                          // startPoint: .topLeading,
                          // endPoint: .bottomTrailing)
                //.ignoresSafeArea(.all, edges: .all)
                
            
            
            PageView(
                title: "Practical and Fun Lessons",
                subtitle: "Lessons that work for you,so you can learn and memorize while having fun.",
                imageName: "onboarding1",
                showsDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding)
                
                
            PageView(
                title: "Play and EnJoy",
                subtitle: "Quizes, Daily Challenges",
                imageName: "onboarding4",
                showsDismissButton: true,
                shouldShowOnboarding: $shouldShowOnboarding)
                
                
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
    
}
