//
//  GamesManager.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 05/07/2022.
//

import SwiftUI

class GamesManager: ObservableObject {
    
    @Published var questionsFile : String
    @Published var questions : [Question]
    @Published var selectedAnswer: Answer?
    @Published var currentQuestion : Question?
    @Published var index = 0
    @Published var progress : CGFloat = 0.0
    init(questionsFile: String) {
        self.questionsFile = questionsFile
        self.selectedAnswer = nil
        
        if let loadQuestions = loadJson(filename: questionsFile){
            self.questions = loadQuestions
            //self.currentQuestion = self.questions[0]
            self.currentQuestion = self.questions[index]
        } else {
            print("error loading question")
            self.questions = []
            self.currentQuestion = nil
        }
    }
    
    func goToNextQuestion () {
        if index + 1 < questions.count{
            index += 1
            
            setQuestion()
        }
    }

    func setQuestion () { 
        selectedAnswer = nil
        progress = CGFloat(Double(index + 1) / Double(questions.count) * 350)
        
        if index < questions.count {
            currentQuestion = questions[index]
        }
    }
}
//para ir buscar o trivia
struct Answer : Codable {
    //var id = UUID()
    var text : String
    var path : String
    var isCorrectAnswer : Bool
}

struct Question : Codable {
    //var id = UUID()
    var type : String
    var question : String
    var soundImageName : String
    var sound : String
    var word : String
    var answers : [Answer]
   
}

extension Question : Identifiable {
    var id : String {
        return UUID().uuidString
    }
}

extension Answer : Identifiable {
    var id : String {
        return UUID().uuidString
    }
}

func loadJson(filename fileName: String) -> [Question]? {
    if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode([Question].self, from: data)
            return jsonData
        } catch {
            print("error:\(error)")
        }
    }
    return nil
}

func selectAnswer(answer: Answer){
    
    
    
}
