//
//  ContentView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/04/2022.
//

import SwiftUI

struct ContentView: View {
    //definir se os onboarding devem aparecer ou não
    //variavel em @Appstorage p aparecer sóuma vez
    @AppStorage ("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    @AppStorage ("user_state") var user_state: String = "initial"
   
    
    
    var body: some View {
        NavigationView{
            
            if user_state == "initial" {
                if shouldShowOnboarding {
                    OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
                } else {
                    GetStartedView()
                }
            } else if user_state == "american_english" {
                HomeView()
            }
            
            
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
            
        })
        
    }
}


struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showsDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    
    var body: some View {
        VStack{
            if showsDismissButton {
                
                Button(action: {
                    //quando se clica no botão ele faz toggle ou seja desaparece
                    shouldShowOnboarding.toggle()
                    
                }, label: {
                    Text("Learn Languages")
                        .bold()
                        .foregroundColor(Color.orange)
                        .frame(width: 200, height: 50)
                        .background(Color.white)
                        .cornerRadius(40)
                })
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
                .font(.custom("Poppins-Bold", size: 35))
                
            
            Text(subtitle)
                //.font(.system(size: 30))
                .foregroundColor(Color(.white))
                .font(Font.custom("Poppins-Light", size: 24))
                .multilineTextAlignment(.center)
                .padding()
            
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
