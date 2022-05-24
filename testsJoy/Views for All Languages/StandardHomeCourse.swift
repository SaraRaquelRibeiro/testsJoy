//
//  StandardHomeCourse.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/05/2022.
//

import SwiftUI

struct StandardHomeCourse: View {
    var course : Course
    
    let colors: [Color] = [Color.greenGradient1, Color.blueGradient1, Color.blueGradient2, .cyan, .indigo, .red, .yellow]
    
    var body: some View {
        ZStack{
            /*Image(course.image)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 270)
                .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.orange, lineWidth: 4))*/
            Image(course.image)
                .resizable()
                .scaledToFill()
                /*.frame(width: 180, height: 230)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: Color.black.opacity(0.2), radius: 5, y: 5)*/
                //meter a linha colorida
                /*.overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(lineWidth: 8.0)
                        .foregroundColor(colors.randomElement()))*/
        }
    }
}

struct StandardHomeCourse_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeCourse(course: course1Unit1)
            
    }
}
