//
//  SplashScreen.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/04/2022.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    @State var isNavigationBarHidden: Bool = true
    
    var body: some View {
        if isActive {
            ContentView(isNavigationBarHidden: .constant(true))
        } else {
            VStack {
                VStack {
                    Image("owlLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 266)
                        .clipped()
                    
                    Image("joyLetters")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 110)
                        .clipped()
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.5)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                //o tempo que o splash screen vai durar
                DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                    withAnimation {
                        self.isActive = true
                    }
                    
                }
            }
        }
        
       
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
