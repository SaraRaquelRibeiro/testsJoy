//
//  CustomCorner.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 11/07/2022.
//

import Foundation
import SwiftUI


struct CustomCorner : Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path{
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
