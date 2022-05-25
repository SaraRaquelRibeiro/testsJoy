//
//  FlagSelected.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 25/05/2022.
//

import SwiftUI

struct FlagSelected: View {
    
    @State var color: Color
    @State var imageFlag: String
    
    var body: some View {
        Image(imageFlag)
            .resizable()
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .frame(width: 30, height: 30)
            .multilineTextAlignment(.center)
            .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
            .overlay(Circle().stroke(color, lineWidth: 2))
            .padding()
    }
}

struct FlagSelected_Previews: PreviewProvider {
    static var previews: some View {
        FlagSelected(color: .blue,
                     imageFlag: "1")
    }
}
