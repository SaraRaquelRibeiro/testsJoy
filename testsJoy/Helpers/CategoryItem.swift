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
        VStack(alignment: .leading){
            Image(course.image)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(100)
            
            Text(course.name)
                .opacity(0.6)
                .font(.custom("Poppins-medium", size: 11))
                .foregroundColor(.black)
                .padding(.leading)
            
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
