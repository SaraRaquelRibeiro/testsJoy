//
//  CircularProgressBar.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/06/2022.
//

import SwiftUI

struct CircularProgressBar: View {
    @Binding var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading) {
            Circle()
                .stroke(lineWidth: 10)
                .foregroundColor(Color.grayLight)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 6.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.greenGradient1)
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 2.0))
            
            
        }
    }
}

struct CircularProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressBar(progress: .constant(20))
    }
}
