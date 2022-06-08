//
//  AnswerRowCircle.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 07/06/2022.
//

import SwiftUI

struct AnswerRowCircle: View {
    
    @State var symbol: String
    
    var body: some View {
        ZStack {
            
            Capsule()
                .fill(Color.white)
                .frame(width: 120, height: 120)
                .foregroundColor(Color.white)
                .shadow(color: .gray.opacity(0.2), radius: 6, x: -2, y: 5)
            
            Image(systemName: symbol)
        }
    }
}

struct AnswerRowCircle_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRowCircle(symbol: "x.circle")
    }
}
