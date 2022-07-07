//
//  Unit1LevelsView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/06/2022.
//

import SwiftUI
import Lottie

struct LevelsView: View {
    var unit : Unit
    var course : Course
    var level : Level
    var vm = HomeVM()
    
    static var top = topRowButtons()
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Rectangle()
                .foregroundColor(.white)

            ZStack {
                Rectangle()
                    .fill(Color("\(unit.color)").opacity(0.8))
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 200, alignment: .top)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    
                    HStack {
                        
                        
                        
                        Image(systemName: "chevron.backward")
                            .font(.custom("Poppins-semibold", size: 20))
                            .foregroundColor(Color.white.opacity(0.5))
                            .padding(.leading, 20)
                            .padding(.bottom, 55)
                        TopRowBtns(logo: "", languageFlag: "1")
                            .padding(.leading, -50)
                            .padding(.top, 400)
                    }
                    
                    HStack {
                        VStack {
                            Text(unit.name)
                                .font(.custom("Poppins-Bold", size: 25))
                                .foregroundColor(.white)
                                .shadow(color: .black.opacity(0.2), radius: 3, x: 2, y: 3)
                                .padding(.leading, -120)
                            Text(course.name)
                                .font(.custom("Poppins-medium", size: 20))
                                .foregroundColor(.white)
                                .padding(.leading, -120)
                        }
                        
                          Image("owlLogo")
                            .resizable()
                            .scaledToFit()
                            //.clipShape(Circle())
                            //.overlay(Circle().stroke(Color.red, lineWidth: 5))
                            .frame(width: 100, height: 100)
                            
                        
                    }
                    .padding(.top, -200)
                        
                }
            }
            .padding(.top, -150)
            Spacer()
            
            
            ScrollView(showsIndicators: false){
                
                ZStack{
                   //***** words appear letra a letra
                    //CharView(input: " Select the first Level ")
                        //.position(x: 130, y: 200)
                    
                    LottieView(fileName: "papagaio")
                    
                    ForEach(course.levels){ level in
                            ItemsFromLevel(level: level)
                        }
                  
                }
               
            }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

struct LevelsView_Previews: PreviewProvider {
    static var vm = HomeVM()
    static var previews: some View {
        LevelsView(unit: vm.units[0], course: vm.units[0].courses[0], level: vm.units[0].courses[0].levels[0])
    }
}






