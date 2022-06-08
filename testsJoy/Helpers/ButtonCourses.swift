//
//  ButtonCourses.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 08/06/2022.
//

import SwiftUI

struct ButtonCourses: View {
    var text: String
    var background: Color
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct ButtonCourses_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCourses(text: "Next", background: Color.pink)
    }
}
