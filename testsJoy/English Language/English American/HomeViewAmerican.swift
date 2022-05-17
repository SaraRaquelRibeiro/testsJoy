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
            
            
            VStack {
                //inserir as units
                ForEach(vm.allUnits, id: \.self){ uni in
                    VStack {
                        HStack {
                            Text(uni)
                                .font(.custom("Poppins-SemiBold", size: 21))
                            Spacer()
                        }
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
                                                                .stroke(lineWidth: 6.0)
                                                                .foregroundColor(Color("\(course.color)")))
                                                    //para afastar um bocado os circulos
                                                        .padding(.trailing, 14)
                                            }
                                        }
                                    }
                    }
                    .padding(.horizontal, 18)
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
