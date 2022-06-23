//
//  Course.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/05/2022.
//

import Foundation
import SwiftUI

struct Course : Identifiable {
    var id: String
    var name : String
    var image : String
    var color1 : String
    var color2 : String
    //imagem que aparece nos níveis da unitx
    var imageLevel : String
    //position de cada image level
    var coordinateX : CGFloat
    var coordinateY: CGFloat
    
}


