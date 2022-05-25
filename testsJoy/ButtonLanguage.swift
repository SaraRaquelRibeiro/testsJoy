//
//  ButtonLanguage.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 11/05/2022.
//

import SwiftUI

struct ButtonLanguage: View {
    
    @Binding var isSelected: Bool
    @State var color: Color
    @State var textTitle: String
    @State var textSubtitle: String
    @State var imageLang: String
    @State var imageFlag: String
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .stroke(isSelected ? color : Color("darkShadow").opacity(0.7), style: StrokeStyle(lineWidth: 5.5))
            //.strokeBorder(Color("darkShadow"))
                .frame(width: 150, height: 150)
                .padding(.vertical, 8)
            
            VStack{
                
                Text(textTitle).tag(textTitle)
                    .font(.custom("Poppins-Regular", size: 15))
                    .padding(-5)
                Text(textSubtitle)
                    .font(.custom("Poppins-Light", size: 11))
                    .opacity(0.8)
                    .padding(-5)
                
                Image(imageLang)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .frame(width: 90, height: 110, alignment: .center)
                    .clipped()
            }
        }
        //.shadow(color: Color.black.opacity(0.1), radius: 1, y: 5)
    }
}

struct ButtonLanguage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLanguage(isSelected: .constant(false),
                       color: .orangeGradient1,
                       textTitle: "English",
                       textSubtitle: "American",
                       imageLang: "englishAmerican",
                       imageFlag: "1")
    }
}
