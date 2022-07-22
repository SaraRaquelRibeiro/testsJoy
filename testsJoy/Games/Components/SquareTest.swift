//
//  SquareTest.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/07/2022.
//

import SwiftUI

struct SquareTest: View {
    @ObservedObject var gamesManager : GamesManager
    var answer : Answer
    @Binding var selectedItem: String?
    @State var isSelected = false
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill(isSelected ? Color.blueGradient3.opacity(0.1) : Color(red: 255, green: 245, blue: 158))
                    .frame(width: 130, height: 150)
                    .foregroundColor(Color.white)
                    .shadow(color: .gray.opacity(0.2), radius: 6, x: -2, y: 5)
                
                if answer.text == selectedItem {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.blueGradient3.opacity(0.1))
                            .frame(width: 130, height: 150)
                            .foregroundColor(Color.white)
                            .shadow(color: .gray.opacity(0.2), radius: 6, x: -2, y: 5)
                        
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.blueGradient2)
                        .frame(width: 130, height: 150)
                    }
                }
                Image(answer.path)
                    .resizable()
                    .frame(width: 115, height: 138)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Text(answer.text)
                //rever padding q n é melhor maneira de resolver
                    .padding(.top, 100)
                Spacer()
                if answer.text == selectedItem {
                    
                    VStack {
                        Image(systemName: "checkmark")
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
        .contentShape(Rectangle())
        .onTapGesture(perform: {
            //self.selectedItem = self.title
            selectedItem = answer.text
            gamesManager.selectedAnswer = answer
        })
    }
}

struct SquareTest_Previews: PreviewProvider {
    static var previews: some View {
        let gamesManager = GamesManager(questionsFile: "dataGame1")
        SquareTest(
            gamesManager: gamesManager,
            answer: gamesManager.questions[0].answers[0],
            selectedItem: .constant("NoName"))
    }
}
