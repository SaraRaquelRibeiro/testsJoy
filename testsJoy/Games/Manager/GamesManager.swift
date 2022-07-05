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



struct Answer : Decodable {
    var text : String
    var path : String
    var isCorrectAnswer : Bool
}

struct Question : Decodable {
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
