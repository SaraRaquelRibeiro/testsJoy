//
//  HomeViewAmerican.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/05/2022.
//

import SwiftUI

struct HomeViewAmerican: View {
    
    var vm = HomeVM()
    
    
    
    var body: some View {
       
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            
            ScrollView (showsIndicators: false) {
                LazyVStack {
                    //inserir as units
                    ForEach(vm.allUnits, id: \.self){ uni in
                        VStack {
                            HStack {
                                Text(uni)
                                    .font(.custom("Poppins-SemiBold", size: 21))
                                //insert small description after some Units
                                if(uni == "Unit 2") {
                                    HStack{
                                        Image(systemName: "circle.fill")
                                            .foregroundColor(.yellow)
                                            .font(.system(size: 6))
                                        Text("100 popular words")
                                            .font(.custom("Poppins-regular", size: 16))
                                    }
                                    
                                }
                            
                                Spacer()
                            }
                            .padding(.bottom, -7)
                                        //scrollview p os cursos
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(vm.getCourse(forUnit: uni)) { course in
                                                        StandardHomeCourse(course: course)
                                                            .frame(width: 90, height: 110)
                                                            .clipShape(RoundedRectangle(cornerRadius: 30))
                                                            .shadow(color: Color.black.opacity(0.2), radius: 5, y: 5)
                                                            .clipShape(RoundedRectangle(cornerRadius: 30))
                                                            .shadow(color: Color.black.opacity(0.2), radius: 5, y: 5)
                                                            //meter a linha colorida
                                                            .overlay(
                                                                RoundedRectangle(cornerRadius: 30)
                                                                    .stroke(lineWidth: 5.0)
                                                                    .foregroundColor(Color("\(course.color)")))
                                                        //para afastar um bocado os circulos
                                                            .padding(.trailing, 14)
                                                }
                                            }
                                            .padding(.top, 10)
                                            .padding(.bottom, 10)
                                            .padding(.horizontal, 10)
                                        }
                                        
                        }
                        .padding(.horizontal, 10)
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeViewAmerican_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewAmerican()
    }
}
