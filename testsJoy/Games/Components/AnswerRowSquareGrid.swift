//
//  AnswerRowSquareGrid.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 23/06/2022.
//

import SwiftUI

struct AnswerRowSquareGrid: View {
    @ObservedObject var gamesManager : GamesManager
    //var answer : Answer
    @State var isSelected = false
    @State var selectedItem: String? = nil
    var question : Question
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
           
           
                /*LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(0..<question.answers.count){ index in
                        
                        AnswerRowSquare(
                            gamesManager: gamesManager,
                            answer: question.answers[index])
                    }
                }
                .padding(30)*/
                
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(question.answers, id: \.self){ item in
                        SquareTest(gamesManager: gamesManager,
                                   answer: item,
                                   selectedItem: $selectedItem)
                    }
                }
                
          
            
        }
        
        
    }
}

struct AnswerRowSquareGrid_Previews: PreviewProvider {
    static var previews: some View {
        let gamesManager = GamesManager(questionsFile: "dataGame1")
        AnswerRowSquareGrid(
            gamesManager: gamesManager,
            question: gamesManager.questions[0])
    }
}


