//
//  StandardLanguageView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 06/05/2022.
//

import SwiftUI

struct StandardLanguageView: View {
    
   
    var languages: Language
    
    //variavel para ajudar/preencher a animação da linha laranja
    @State var fill: CGFloat = 0.0
    
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color("darkShadow").opacity(0.6), style: StrokeStyle(lineWidth: 5.5))
            //.strokeBorder(Color("darkShadow"))
                .frame(width: 150, height: 150)
                .padding(.vertical, 8)
            
            //animation rectangle
            RoundedRectangle(cornerRadius: 30)
                .trim(from: 0, to: self.fill)
                .stroke(Color.orangeGradient1, style: StrokeStyle(lineWidth: 5))
            //.strokeBorder(Color("darkShadow"))
                .frame(width: 150, height: 150)
                .rotationEffect(.init(degrees: -90))
                .animation(Animation.linear(duration: 0.01))
                .padding(.vertical, 8)
            
            
            
            VStack{
                
                Text(languages.languageTitle).tag(languages.languageTitle)
                    .font(.custom("Poppins-Regular", size: 15))
                    .padding(-5)
                Text(languages.languageType)
                    .font(.custom("Poppins-Light", size: 11))
                    .opacity(0.8)
                    .padding(-5)
                
                Image(languages.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .frame(width: 90, height: 110, alignment: .center)
                    .clipped()
            }
            
        }
        .onTapGesture(perform: {
            
            self.fill = 1.0
        })
    }
    
        
}

struct StandardLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        StandardLanguageView(languages: Language.init(languageTitle: "English",
                                                      languageType: "American",
                                                      imageName: "englishAmerican"))
    }
}
