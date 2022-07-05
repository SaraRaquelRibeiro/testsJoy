//
//  Question.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 05/07/2022.
//

import Foundation
import SwiftUI

struct Question : Identifiable {
    var id: String
    var type : String
    var question : String
    var soundImageName : String
    var sound : String
    var word : String
    var imageAnswer1 : String
    var imageAnswer2 : String
    var imageAnswer3 : String
    var imageAnswer4 : String
    var correctAnswer : Int
}
