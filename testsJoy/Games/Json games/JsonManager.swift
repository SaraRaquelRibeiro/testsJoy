//
//  JsonManager.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 29/06/2022.
//

import Foundation
import SwiftUI

class JsonManager : ObservableObject {
    private(set) var json : [Json.Result] = []
    @Published private(set) var length = 0
    //question of the array
    @Published private(set) var index = 0
    //let us know if the user reach the en of the array or end of the game
    @Published private(set) var reachedEnd = false
    @Published private(set) var answerSelected = false
    @Published private(set) var question : AttributedString = ""
    @Published private(set) var answerChoices : [Answer] = []
    @Published private(set) var progress : CGFloat = 0.00
    @Published private(set) var score = 0
    @Published private(set) var word : AttributedString = ""
    
    @EnvironmentObject var jsonManager : JsonManager
    
    init() {
        Task.init {
           await fetchTrivia()
        }
    }
    
    //para ir buscar o trivia
    func fetchTrivia() async {
        guard let url = Bundle.main.url(forResource: "dataGame1", withExtension: "json")
                   else {
                       print("Json file not found")
                       return
                   }
       
        //fazer o request
        let urlRequest = URLRequest(url: url)
        
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error while fetching data")}
            //vai eliminar os _ de cada campo e justar as palavras
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            
            let decodedData = try decoder.decode(Json.self, from: data)
            
            //gravar os resultados numa variavel
            
            DispatchQueue.main.async {
                //quando o user volta a jogar
                self.index = 0
                self.score = 0
                self.progress = 0.00
                self.reachedEnd = false
                
                
                self.json = decodedData.results
                self.length = self.json.count
                //como estamos dentro de uma closure temos de inserir o self
                self.setQuestion()
            }
        } catch {
            print("Error fetching trivia: \(error)")
        }
    }
    
    func goToNextQuestion () {
        if index + 1 < length{
            index += 1
            
            setQuestion()
        }
        else {
            reachedEnd = true
        }
    }
    
    func setQuestion () { //chamadam em 2 sitios, na func goToNextQuestion
        answerSelected = false
        progress = CGFloat(Double(index + 1) / Double(length) * 350)
        
        if index < length {
            let currentQuestion = json[index]
            word = currentQuestion.formattedWord
            question = currentQuestion.formattedQuestion
            answerChoices = currentQuestion.answers
        }
    }
    
    //detetar se é a answer correcta e se sim passar p true
    func selectAnswer(answer: Answer){
        //set answerselected to true - o user já selecionou uma answer
        answerSelected = true
       
        if answer.isCorrect {
            //increment a score **** aqui vai poder meter-se as moedas
            score += 1
        }
        
    }
    
    func checkIfCorrect (answer: Answer){
        answerSelected = true
        if !jsonManager.answerSelected{
            
            jsonManager.selectAnswer(answer: answer)
           
        }
    }
}

