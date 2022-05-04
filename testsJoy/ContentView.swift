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
    
    
    var body: some View {
        NavigationView{
            ZStack {
                //Color.white
                    //.edgesIgnoringSafeArea(.all)
                Text("You are in the main app now!")
                    .padding()
            }
            .navigationTitle("HOME")
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
            Image(imageName)
                .resizable()
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .multilineTextAlignment(.center)
                .padding()
            
            Text(title)
                //.font(.system(size: 35))
                .foregroundColor(.white)
                //.lineSpacing(-200)
                .font(.custom("Poppins-Medium", size: 35))
            
            Text(subtitle)
                //.font(.system(size: 30))
                .foregroundColor(Color(.white))
                .font(Font.custom("Poppins-Light", size: 24))
                .multilineTextAlignment(.center)
                .padding()
            
            if showsDismissButton {
                Button(action: {
                    //quando se clica no botão ele faz toggle ou seja desaparece
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Get Started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(40)
                })
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
