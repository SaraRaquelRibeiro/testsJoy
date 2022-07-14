//
//  CategoryItem.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/06/2022.
//

import SwiftUI

struct CategoryItem: View {
    var course : Course
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Image(course.image)
                .resizable()
                .frame(width: 90, height: 110)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: Color.black.opacity(0.4), radius: 4, x: 2,y: 3)
                /*.overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 4.0)
                        .shadow(color: Color.black.opacity(0.3), radius: 2, x: 1, y: 3)
                        .foregroundColor(Color("\(course.color1)")))*/
                .padding(.top, 10)
            
            Text(course.name)
                .opacity(0.8)
                .font(.system(size: 14))
                .foregroundColor(.black)
                .padding(.leading, 10)
            
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var vm = HomeVM()
    static var previews: some View {
        CategoryItem(course: vm.units[0].courses[0])
    }
}
