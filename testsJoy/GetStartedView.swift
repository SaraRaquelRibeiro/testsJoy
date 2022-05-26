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
                    
                   
                    
                    NavigationLink(destination: {
                        ChooseLanguageWithButtonView()
                    }, label: {
                        Text("Get Started")
                            .bold()
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                            //.background(Color.orangeGradient2)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.orangeGradient1, Color.orangeGradient2]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                    })
                        //.modifier(InnerShadowModifier())
                        .navigationBarBackButtonHidden(true)
                    
                }
                
            }
        
        
    }
        
    
}

struct InnerShadowModifier: ViewModifier{
    
    @State var radius: CGFloat = 40
    func body(content: Content) -> some View {
       content
            .overlay(
            RoundedRectangle(cornerRadius: radius)
                
                .stroke(Color.orange, lineWidth: 4)
                .shadow(color: Color.orangeGradient2, radius: 1, x: 0, y: 2)
                //.shadow(color: Color("darkShadow"), radius: 8, x: 8, y: 8)
                //.cornerRadius(40)
            )
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}

