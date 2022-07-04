//
//  Level.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 30/06/2022.
//

import Foundation
import SwiftUI

struct Level : Identifiable {
    var id: String
    var name : String
    //imagem que aparece nos níveis do curso x
    var imageWithColor : String
    var imageGray : String
    //position de cada image level
    var coordinateX : CGFloat
    var coordinateY: CGFloat
}
