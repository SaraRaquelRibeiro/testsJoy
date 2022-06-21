//
//  CategoryRow.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/06/2022.
//

import SwiftUI

struct CategoryRow: View {
    var unit : Unit
   
    @StateObject var triviaManager = TriviaManager()
    
    @State private var isShowingRectangle = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            
            
            VStack (alignment: .leading, spacing: 8) {
                HStack{
                    
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
                    
                   
                        
                    
                   
                }
                .padding(.leading)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        //.stroke(lineWidth: 2.0)
                        .fill(Color("\(unit.color)").opacity(0.6))
                        .shadow(color: Color.black.opacity(0.2), radius: 1, x: 1, y: 3)
                        .foregroundColor(Color("\(unit.color)").opacity(0.4))
                        .frame(width: 150, height: 24)
                    
                    Text(unit.description)
                        .font(.custom("Poppins-medium", size: 12))
                        //.opacity(0.6)
                        .foregroundColor(.white)
                        
                    
                }
                .padding(.leading, 15)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 10){
                    ForEach(unit.courses){ course in
                        NavigationLink {
                            SubscriptionModelOne()
                            //courseOneUnitOne(answer: Answer(text: "", isCorrect: true), showSheet: true)
                        } label: {
                            
                            ZStack {
                                SquareBackgroundCourses(course: course)
                                    .padding(.leading, 15)
                                    .padding(.bottom, 12)
                                
                                CategoryItem(course: course)
                                
                                
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
            .frame(height: 170)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    
    static var vm = HomeVM()
    
    static var previews: some View {
        CategoryRow(unit: vm.units[0])
    }
}
