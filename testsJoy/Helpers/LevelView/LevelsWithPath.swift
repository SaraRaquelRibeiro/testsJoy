//
//  LevelsWithPath.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/06/2022.
//

import SwiftUI

struct LevelsWithPath: View {
    //var unit : Unit
    var course : Course
    var num : Int = 0
    
    
    var body: some View {
        ZStack {
            /*Path { path in
                path.move(to: CGPoint(x: 200, y: 100))
                path.addLine(to: CGPoint(x: 100, y: 300))
                path.addLine(to: CGPoint(x: 300, y: 300))
                path.addLine(to: CGPoint(x: 200, y: 100))
            }
            .stroke(.blue, lineWidth: 10)*/
            Path { path in
                path.move(to: CGPoint(x: course.coordinateX, y: course.coordinateY))
                //path.addLine(to: CGPoint(x: 100, y: 300))
                path.addLine(to: CGPoint(x: 300, y: 300))
            }
            .stroke(.blue, lineWidth: 10)
            
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
    }
}

struct LevelsWithPath_Previews: PreviewProvider {
    static var vm = HomeVM()
    static var previews: some View {
        LevelsWithPath(course: vm.units[0].courses[0])
    }
}
