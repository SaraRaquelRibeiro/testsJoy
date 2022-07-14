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
            RoundedRectangle(cornerRadius: 14)
                .fill(Color.blueGradient2.opacity(0.9))
                .frame(width: 98, height: 116)
            
        }
    }
}

struct SquareBackgroundCourses_Previews: PreviewProvider {
    static var previews: some View {
        SquareBackgroundCourses(course: course1Unit1)
    }
}
