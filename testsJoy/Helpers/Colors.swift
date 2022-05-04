//
//  Colors.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/04/2022.
//

import Foundation
import SwiftUI

extension Color {
    //static let orangeGradient
    static let orangeGradient1 = Color("orangeGradient1")
    static let orangeGradient2 = Color("orangeGradient2")
    
    //dá o gradiente preto na imagem top da GetStartedView
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.80)]),
        startPoint: .top,
        endPoint: .bottom)
    
}
