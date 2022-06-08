//
//  Trivia.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 08/06/2022.
//

import Foundation

struct Trivia : Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        //inserir as variaveis que existem na API
        var id: UUID{
            UUID()
        }
        var category : String
        var type : String
        var difficulty : String
        var question : String
        var correctAnswer : String
        var incorrectAnswers : [String]
        
        //por causa das palavras nas question que vêm desformatadas e este sistema formata-as
        var formattedQuestion : AttributedString {
            do{
               return try AttributedString(markdown: question)
            } catch{
                print("Error setting formatted question: \(error)")
                return ""
            }
           
        }
        
        //por causa das palavras nas question que vêm desformatadas e este sistema formata-as
        var formattedCategory : AttributedString {
            do{
               return try AttributedString(markdown: category)
            } catch{
                print("Error setting formatted category: \(error)")
                return ""
            }
           
        }
        //fazer a logica dos erros nas respostas que estão correctas ou falsas
        var answers: [Answer] {
            do {
                //temos que criar uma instance de Answer pq é um array
                let correct = [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                //mapear as respostas incorrectas
                let incorrects = try incorrectAnswers.map { answer in
                    Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                //concatenar as answers together
                let allAnswers = correct + incorrects
                
                
                
                //para que as respostas apareçam baralhadas
                return allAnswers.shuffled()
                
                
            } catch {
                print("Error setting answers: \(error)")
                return []
            }
        }
    }
}
