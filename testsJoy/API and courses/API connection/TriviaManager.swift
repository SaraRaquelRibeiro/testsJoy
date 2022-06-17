//
//  TriviaManager.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 08/06/2022.
//

import Foundation
import SwiftUI

class TriviaManager : ObservableObject {
    private(set) var trivia : [Trivia.Result] = []
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
    @Published private(set) var category : AttributedString = ""
    
    @EnvironmentObject var triviaManager : TriviaManager
    
    init() {
        Task.init {
           await fetchTrivia()
        }
    }
    
    //para ir buscar o trivia
    func fetchTrivia() async {
        guard let url = URL(string: "https://opentdb.com/api.php?amount=10") else {fatalError("Missing URL")}
    
        //fazer o request
        let urlRequest = URLRequest(url: url)
        
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error while fetching data")}
            //vai eliminar os _ de cada campo e justar as palavras
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            
            let decodedData = try decoder.decode(Trivia.self, from: data)
            
            //gravar os resultados numa variavel
            
            DispatchQueue.main.async {
                //quando o user volta a jogar
                self.index = 0
                self.score = 0
                self.progress = 0.00
                self.reachedEnd = false
                
                
                self.trivia = decodedData.results
                self.length = self.trivia.count
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
            let currentTriviaQuestion = trivia[index]
            category = currentTriviaQuestion.formattedCategory
            question = currentTriviaQuestion.formattedQuestion
            answerChoices = currentTriviaQuestion.answers
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
        if !triviaManager.answerSelected{
            
            triviaManager.selectAnswer(answer: answer)
           
        }
    }
}
