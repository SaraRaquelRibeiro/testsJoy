//
//  GamesManager.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 05/07/2022.
//

import SwiftUI

struct GamesManager: View {
    
    var questionsFile : String
    var questions : [Question]
    
    
    init(questionsFile: String) {
        self.questionsFile = questionsFile
        
        if let loadQuestions = loadJson(filename: questionsFile){
            self.questions = loadQuestions
        } else {
            print("error loading question")
            self.questions = []
        }
    }
    
    var body: some View {
        VStack{
        ForEach(questions){ question in
            Text(question.word)
            /*ForEach(question.answers) { answer in
                Text(answer.text)
            }*/
        }
            /*ForEach(questions){ question in
                if question.type == "selectByImage" {
                    GameSelectByImage(question: "dd",
                                      word: "ss",
                                      imagesTest: exampleImages,
                                      unit: unit1,
                                      course: course1Unit1)
                }
            }*/
        }
    }
}

struct GamesManager_Previews: PreviewProvider {
    static var previews: some View {
        GamesManager(questionsFile: "dataGame1")
    }
}



//para ir buscar o trivia
struct Answer : Codable {
    var text : String
    var path : String
    var isCorrectAnswer : Bool
    
    static let allAnswer: [Answer] = Question.sampleQuestion.answers
}

struct Question : Codable {
    var type : String
    var question : String
    var soundImageName : String
    var sound : String
    var word : String
    var answers : [Answer]
    
    static let allQuestion: [Question] = loadJson(filename: "dataGame1")!
    static let sampleQuestion: Question = allQuestion[0]
    
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

//detetar se alguma answer foi selecionada
func selectAnswer(answer: Answer){
    
    var answerSelected = true
   
    /*if answer.isCorrect {
        //increment a score **** aqui vai poder meter-se as moedas
        score += 1
    }*/
    
}
