//
//  Unit.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/06/2022.
//

import Foundation
import SwiftUI


struct Unit : Identifiable {
    
    var id: String
    var name : String
    var courses : [Course]
    var description : String
    
    var badgeName : String
    var badge : Image {
        Image(badgeName)
    }
    var color : String
    
    var lock : String
}


