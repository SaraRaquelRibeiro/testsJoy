//
//  Unit1LevelsView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/06/2022.
//

import SwiftUI

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
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 190, alignment: .top)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    
                    HStack {
                        Image(systemName: "chevron.backward")
                            .font(.custom("Poppins-Bold", size: 25))
                            .foregroundColor(Color.white.opacity(0.5))
                            .padding(.leading, 20)
                            .padding(.bottom, 55)
                        TopRowBtns(logo: "", languageFlag: "")
                            .padding(.leading, -50)
                            .padding(.top, 400)
                    }
                    
                    HStack {
                        Text(unit.name)
                            .font(.custom("Poppins-Bold", size: 25))
                            .foregroundColor(.white)
                            .padding(.leading, -120)
                        
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
                    /*CategoryItem(course: course)
                         .padding(.leading, 100)
                         .padding(.top, 200)*/
                    CharView(input: "Learn and have fun.")
                        .position(x: 130, y: 200)
                    
                    ForEach(course.levels){ level in
                            ItemsFromLevel(level: level)
                        }
                    Button(action: {
                        
                    }, label: {
                        LottieView(fileName: "down").frame(width: 90, height: 90)
                            .animation(
                                Animation.linear.repeatForever()
                            )
                    })
                        .position(x: 115, y: 260)
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






