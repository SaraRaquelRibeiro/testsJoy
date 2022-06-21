//
//  GradientGetStartedView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 04/05/2022.
//

import SwiftUI

struct GradientGetStartedView: View {
    //ajusta ao ecra todo nos lados caso haja uma black bar com full width of the view
    let screen = UIScreen.main.bounds
    
    
    var body: some View {
        
        /*ZStack{
            Image("onboarding3")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: screen.width)
                
                
        }
        //puxar o padding todo para cima em cima
        .padding(.top, -100)
        //.zIndex(-1)
        .background(
            //o LinearGradient vai à extension que está nos GlobalHelpers
            Color.blackOpacityGradient
            //adicionar este padding faz com que a imagem fique lighter no top
            .padding(.top, 100)
            )*/
        
        ZStack{
            //Color.black
                //.edgesIgnoringSafeArea(.all)
            
            /*Image("onboarding3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.top, -100)
                .frame(height: 660)*/
            Image("onboarding3")
                .resizable()
                .scaledToFill()
                .clipped()
                .padding(.top, -100)
            
            
            
        }
        .overlay(Color.blackOpacityGradient)
        
    }
}

struct GradientGetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GradientGetStartedView()
    }
}
