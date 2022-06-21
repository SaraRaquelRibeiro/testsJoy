//
//  Blur.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 04/05/2022.
//

import Foundation
import SwiftUI

struct Blur: UIViewRepresentable{
    var style : UIBlurEffect.Style
        
        func makeUIView(context: Context) -> UIVisualEffectView {
            let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
            return view
        }
        
        func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
            uiView.effect = UIBlurEffect(style: style)
        }
    
}
