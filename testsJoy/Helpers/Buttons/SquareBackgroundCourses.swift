//
//  SquareBackgroundCourses.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 20/06/2022.
//

import SwiftUI

struct SquareBackgroundCourses: View {
   
    var course : Course
    
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(
                    gradient: .init(colors: [Color("\(course.color1)"), Color("\(course.color2)")]),
                    startPoint: .init(x: 0.5, y: 0),
                    endPoint: .init(x: 0.5, y: 0.6)
                  ))
                .frame(width: 102, height: 122)
            
        }
    }
}

struct SquareBackgroundCourses_Previews: PreviewProvider {
    static var previews: some View {
        SquareBackgroundCourses(course: course1Unit1)
    }
}
