//
//  CapsuleButtons.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 12/05/2022.
//

import SwiftUI

struct CapsuleButtons: View {
    
    @State var color1: Color
    @State var color2: Color
    @State var width: CGFloat
    @State var height: CGFloat
    @State var text: String
    
    var body: some View {
        
        ZStack{
            Capsule()
                .fill(LinearGradient(
              gradient: .init(colors: [color1, color2]),
              startPoint: .init(x: 0.5, y: 0),
              endPoint: .init(x: 0.5, y: 0.6)
            ))
            .frame(width: width, height: height)
            Text(text)
                .font(.custom("Poppins-bold", size: 15))
                .foregroundColor(.white)
        }
        
    }
}

struct CapsuleButtons_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButtons(color1: Color.blueGradient1,
                       color2: Color.orangeGradient2,
                       width: 280,
                       height: 100,
                       text: "Get now")
    }
}
