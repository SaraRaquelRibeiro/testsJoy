//
//  LottieView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 15/06/2022.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable{
    typealias UIViewType = UIView
    var fileName: String
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        //render lottie file
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named(fileName)
        animationView.animation = animation
        //escala
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        
        //especificar os constraints
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        //
    }
}
