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
    static let blueGradient1 = Color("blueGradient1")
    static let blueGradient2 = Color("blueGradient2")
    
    
    //dá o gradiente preto na imagem top da GetStartedView
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.70)]),
        startPoint: .top,
        endPoint: .bottom)
    
}


