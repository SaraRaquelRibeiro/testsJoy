//
//  ButtonCourses.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 08/06/2022.
//

import SwiftUI

struct ButtonCourses: View {
    var text: String
    var textColor: Color
    var shadowColor: Color
    var background: Color
    
   
    
    var body: some View {
        Text(text)
            .font(.custom("Poppins-Bold", size: 20))
            .foregroundColor(textColor)
            .frame(width: 240, height: 46)
            //.background(Color.orangeGradient2)
            .background(background)
            .cornerRadius(15)
            .shadow(color: shadowColor.opacity(0.4), radius: 5, y: 5)
    }
}

struct ButtonCourses_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCourses(text: "Let's Go",
                      textColor: Color.pink,
                      shadowColor: Color.green,
                      background: Color.gray)
    }
}


