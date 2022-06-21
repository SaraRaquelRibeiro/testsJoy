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
    static let blueGradient3 = Color("blueGradient3")
    static let greenGradient1 = Color("greenGradient1")
    static let greenGradient2 = Color("greenGradient2")
    static let blueLight = Color("blueLight")
    static let blueMedium = Color("blueMedium")
    static let blueDark = Color("blueDark")
    static let grayLight = Color("grayLight")
    static let pinkGradient1 = Color("pinkGradient1")
    static let pinkIncorrectAnswerBackground = Color("pinkIncorrectAnswerBackground")
    static let pinkIncorrectAnswerText = Color("pinkIncorrectAnswerText")
    static let greenCorrectAnswerBackground = Color("greenCorrectAnswerBackground")
    static let greenStrong = Color("greenStrong")
    
    
    //dá o gradiente preto na imagem top da GetStartedView
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.70)]),
        startPoint: .top,
        endPoint: .bottom)
    
}




