//
//  Game.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 29/06/2022.
//

import Foundation

struct Game: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case type
        case question
        case soundImageName
        case sound
        case word
        case correctImageName
        case wrongImage1Name
        case wrongImage2Name
        case wrongImage3Name
    }
    
    var id = UUID()
    var type: String
    var question: String
    var soundImageName: String
    var sound: String
    var word: String
    var correctImageName: String
    var wrongImage1Name: String
    var wrongImage2Name: String
    var wrongImage3Name: String
    
}


class ReadData: ObservableObject  {
    @Published var games = [Game]()
    
        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "dataGame1", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let games = try? JSONDecoder().decode([Game].self, from: data!)
        self.games = games!
        
    }
     
}
