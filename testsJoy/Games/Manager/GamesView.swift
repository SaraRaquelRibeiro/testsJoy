//
//  GamesView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 12/07/2022.
//



import SwiftUI

struct GamesView: View {
    var unit : Unit
    var course : Course
    @State var showSheet: Bool = false
    @State private var sheetMode : SheetMode = .quarter
    @ObservedObject var gamesManager : GamesManager
    init(questionsFile: String, unit: Unit, course: Course) {
        self.gamesManager = GamesManager(questionsFile: questionsFile)
        self.unit = unit
        self.course = course
    }
    
    var body: some View {
        VStack {
           ProgressView(unit: unit, course: course)
                //.padding(.top, -400)
            VStack(){
                Spacer()
                if gamesManager.currentQuestion?.type == "selectByImage" {
                    GameSelectByImage(gamesManager: gamesManager)
                } else if gamesManager.currentQuestion?.type == "rightOrWrong" {
                    RightOrWrong(gamesManager: gamesManager)
                }
            }
          
                if gamesManager.selectedAnswer != nil {
                    
                    ZStack{
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
                                          background: Color.greenGradient1.opacity(0.8))
                        })
                            
                        
                        FlexibleSheet(sheetMode: $sheetMode, content: {
                            if let selectedAnswer = gamesManager.selectedAnswer{
                            if selectedAnswer.isCorrectAnswer {
                                    VStack{
                                        WinScreenOne(gamesManager: gamesManager)
                                        
                                       
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                                   
                                    
                                } else {
                                    VStack{
                                        FailScreenOne(gamesManager: gamesManager)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                                }
                            }
                            
                        })
                            
                            .padding(.bottom)
                    }
                    
                    
                   
                } else {
                    ButtonCourses(text: "Verify",
                                  textColor: Color.gray.opacity(0.7),
                                  shadowColor: Color.gray.opacity(0.7),
                                  background: Color.gray.opacity(0.2))
                }
                
                /*FlexibleSheet(sheetMode: $sheetMode, content: {
                    if let selectedAnswer = gamesManager.selectedAnswer{
                    if selectedAnswer.isCorrectAnswer {
                            VStack{
                                    WinScreenOne()
                               
                            }
                            .frame(maxWidth: .infinity, maxHeight: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            
                        } else {
                            VStack{
                                WinScreenOne()
                            }
                            .frame(maxWidth: .infinity, maxHeight: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        }
                    }
                    
                })
                    .padding(.bottom, -300)*/
            

        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
 }

struct GamesView_Previews: PreviewProvider {
    static var vm = HomeVM()
    static var previews: some View {
        GamesView(questionsFile: "dataGame1",
                  unit: vm.units[0],
                  course: vm.units[0].courses[0])
    }
}





