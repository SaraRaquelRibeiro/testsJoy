//
//  GameSelectByImage.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/06/2022.
//

import SwiftUI


//******* jogo em que aparecem 4 imagens para selecionar a correcta
struct GameSelectByImage: View {
    
    //*** criar as variáveisp fazer as chamadas
    
    
    var imagesTest: [ImageTest]
    
    static var vm = HomeVM()
    
    //var answer: Answer
    @State private var isSelected = false
    
    //binding de teste se aquela pergunta foi selecionada
    @State var isChecked = false
    
    var unit : Unit
    var course : Course
    
    @State var gamesManager : GamesManager
    
    var question : Question
    
    var allAnswers : Answer
    
    @State var showSheet: Bool = false
    
    @State private var sheetMode : SheetMode = .quarter
    
    var body: some View {
       
        ZStack (alignment: .top) {
            Rectangle()
                .foregroundColor(.white)

            GameView(unit: unit, course: course)
            .padding(.top, 10)
            
           
            VStack(alignment: .center, spacing: 20){
                Spacer()
                
                Text(question.question)
                    .font(.custom("Poppins-medium", size: 20))
                    .foregroundColor(Color.black.opacity(0.6))
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: question.soundImageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.blueGradient2)
                        .font(.caption)
                        .frame(width: 42, height: 42)
                        .shadow(color: .gray.opacity(0.4), radius: 1, x: -1, y: 3)
                    
                })
            
            
                Text(question.word)
                .font(.custom("Poppins-semibold", size: 25))
                .foregroundColor(Color.black.opacity(0.8))
                .underline()
            
            
                AnswerRowSquareGrid(isChecked: $isChecked,
                                    question: Question.sampleQuestion)
                .padding(.bottom, 20)
           
                Button(action: {
                    
                    //testar screen the fail or win
                     switch sheetMode {
                     case .quarter:
                         sheetMode = .half
                     case .half:
                         sheetMode = .quarter
                   
                     }
                    
                }, label: {
                    
                    ButtonCourses(text: "Verify",
                                  textColor: Color.white,
                                  shadowColor: Color.greenCorrectAnswerBackground,
                                  background:  allAnswers.isCorrectAnswer ? Color.greenGradient1.opacity(0.8) : Color.blueLight)
                        .padding(.bottom, 40)
                    
                })
                    .onTapGesture(perform: {
                        
                        isChecked = true
                        
                        
                    })
                
                FlexibleSheet(sheetMode: $sheetMode, content: {
                    
                    if allAnswers.isCorrectAnswer {
                        VStack{
                            
                                WinScreenOne(answer: AnswerTrivia(text: "ffof", isCorrect: true), correctAnswer: "so nice")
                           
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        
                    } else {
                        VStack{
                            //WinScreenOne(answer: Answer(text: "ffof", isCorrect: true), correctAnswer: "so nice")
                            WinScreenOne(answer: AnswerTrivia(text: "ffof", isCorrect: false), correctAnswer: "")
                           
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    }
                    
                    
                   
                })
            
            }
            .padding(.top, 200)
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct GameSelectByImage_Previews: PreviewProvider {
    static var vm = HomeVM()
    static var previews: some View {
        GameSelectByImage(imagesTest: exampleImages,
                          unit: vm.units[0],
                          course: vm.units[0].courses[0],
                          gamesManager: GamesManager(questionsFile: "dataGame1"), question: Question.sampleQuestion,
                          allAnswers: Answer.allAnswer[0])
            
    }
}
