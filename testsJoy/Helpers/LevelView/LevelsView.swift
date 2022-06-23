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
                        
                    
                     ForEach(unit.courses){ course in
                         
                         LevelsItem(course: course)
                                     //Image(systemName: "plus")
                                         /*.position( /// here!
                                            x: CGFloat.random(in: 0..<screenWidth),
                                            y:  CGFloat.random(in: 0..<screenHeight)
                                         )*/
                             
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
        LevelsView(unit: vm.units[0], course: vm.units[0].courses[0])
    }
}


struct LevelsItem: View {
    var course : Course
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Image(course.imageLevel)
                .resizable()
                .frame(width: 90, height: 110)
                .clipShape(RoundedRectangle(cornerRadius: 18))
                .shadow(color: Color.black.opacity(0.4), radius: 4, x: 2,y: 3)
                /*.overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 4.0)
                        .shadow(color: Color.black.opacity(0.3), radius: 2, x: 1, y: 3)
                        .foregroundColor(Color("\(course.color1)")))*/
                .padding(.top, 10)
                .position( /// here!
                    x: course.coordinateX,
                    y:  course.coordinateY)
                
            
        }
        .padding(.leading, 15)
    }
}
