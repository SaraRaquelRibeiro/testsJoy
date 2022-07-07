//
//  AnswerRowSquareGrid.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 23/06/2022.
//

import SwiftUI

struct AnswerRowSquareGrid: View {
    //@State private var isSelected = false
    
    @Binding var isChecked: Bool
    
    var question : Question
    
    var allAnswers : [Answer] = Answer.allAnswer
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        //var test = question.answers
        
        LazyVGrid(columns: columns, spacing: 30) {
            //ForEach(0..<question.answers.count){ index in
            ForEach(0..<question.answers.count){ index in
                
                AnswerRowSquare(
                                question: Question.sampleQuestion,
                                allAnswers: Answer.allAnswer[index])
                                .onTapGesture {
                                        self.isChecked = true
                                    }
                
            }
        }
        .padding(30)
    }
}

struct AnswerRowSquareGrid_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRowSquareGrid(isChecked: .constant(false),
                            question: Question.sampleQuestion,
                            allAnswers: Answer.allAnswer)
    }
}


