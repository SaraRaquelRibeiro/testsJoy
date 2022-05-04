//
//  GetStartedView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 04/05/2022.
//

import SwiftUI


struct GetStartedView: View {
    
    //ajusta ao ecra todo nos lados caso haja uma black bar com full width of the view
    let screen = UIScreen.main.bounds
    
    
    var body: some View {
        
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            GradientGetStartedView()
            .frame(width: screen.width)
            //puxar o padding todo para cima em cima
            .padding(.top, -90)
            //.zIndex(-1)
            
            VStack{
                
                Spacer()
                
                HStack{
                    Text("Learn")
                        .foregroundColor(.white)
                        .font(.custom("Poppins-Medium", size: 25))
                    Text("Languages")
                        .foregroundColor(.white)
                        .font(.custom("Poppins-Bold", size: 25))
                }
                
               
                
                
                Button(action: {
                    //
                }, label: {
                    Text("Get Started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.orangeGradient1)
                        .cornerRadius(40)
                })
                
                
                
            }
           
            
        }
        
    }
        
    
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
