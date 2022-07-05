//
//  Answer.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 08/06/2022.
//

import Foundation
import SwiftUI

struct AnswerTrivia: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
