//
//  ProgressBar.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 07/06/2022.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(width: 200, height: 20)
                .foregroundColor(Color.grayLight)
                .cornerRadius(10)
            
            Rectangle()
            //aqui é para alterar a width do 30 para progress
                .frame(width: 30, height: 20)
                .foregroundColor(Color.greenGradient1)
                .cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 30)
    }
}
