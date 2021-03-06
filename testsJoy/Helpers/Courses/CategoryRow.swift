//
//  CategoryRow.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/06/2022.
//

import SwiftUI

struct CategoryRow: View {
    var unit : Unit
    var vm = HomeVM()
    @StateObject var triviaManager = TriviaManager()
    
    @State private var isShowingRectangle = false
    
    @State private var isBlocked = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            
            
            VStack (alignment: .leading, spacing: 10) {
                HStack{
                    
                    //*****se o user já iniciou a unit aparece uma circular bar, senão aparece o badge da unit
                    /*CircularProgressBar(progress: .constant(30))
                        .frame(width: 20, height: 20)*/
                    
                    unit.badge
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.pink)
                        .font(.system(size: 6))
                        
                    
                    Text(unit.name)
                        .font(.custom("Poppins-SemiBold", size: 21))
                        .opacity(0.8)
                        .foregroundColor(.black)
                        .padding(.top, 5)
                    
                    ProgressBar(progress: 20)
                        .scaleEffect(0.8)
                }
                .padding(.leading)
                
                Text(unit.description)
                    .font(.custom("Poppins-light", size: 15))
                    .opacity(0.7)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .frame(width: 300, height: 50)
                    .foregroundColor(.black)
              
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 5){
                    ForEach(unit.courses){ course in
                        NavigationLink {
                            GamesView(questionsFile: "dataGame1",
                                      unit: unit,
                                      course: course)
                            //GamesManager(questionsFile: "dataGame1")
                                /*LevelsView(unit: vm.units[0],
                                           course: vm.units[0].courses[0],
                                           level: vm.units[0].courses[0].levels[0])*/
                           
                            //courseOneUnitOne(answer: Answer(text: "", isCorrect: true), showSheet: true)
                        } label: {
                            
                            ZStack {
                                SquareBackgroundCourses(course: course)
                                    .padding(.leading, 15)
                                    .padding(.bottom, 12)
                                    
                                
                                CategoryItem(course: course)
                                
                                if isBlocked{
                                    /*Image(unit.lock)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                        .padding(.top, 70)
                                        .padding(.leading, 75)*/
                                    
                                    ZStack {
                                        Circle()
                                            .fill(Color.blueGradient4)
                                            .frame(width: 29, height: 29)
                                            
                                        
                                        Image(systemName: "lock.fill")
                                            .font(.system(size: 16, weight: .black))
                                            .shadow(color: .gray.opacity(0.7), radius: 1, x: 2, y: 2)
                                            .foregroundColor(.white)
                                    }
                                    .padding(.top, 70)
                                .padding(.leading, 75)
                                }
                                
                                if isShowingRectangle {
                                    GrayRectangle()
                                                .padding(.leading, 15)
                                                .padding(.bottom, 10)
                                    
                                }
                               
                            }
                        }
                        .onTapGesture(perform: {
                            isShowingRectangle = false
                        })
                        
                    }
                }
            }
            .frame(height: 160)

        }
        .padding(.bottom, 20)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    
    static var vm = HomeVM()
    
    static var previews: some View {
        CategoryRow(unit: vm.units[0])
    }
}
