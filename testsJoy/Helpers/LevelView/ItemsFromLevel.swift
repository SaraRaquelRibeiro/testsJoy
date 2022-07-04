//
//  ItemsFromLevel.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 30/06/2022.
//

import SwiftUI

struct ItemsFromLevel: View {
    var level : Level
   
    @State var isSelected: Bool = false
   
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
           
            
            HStack {
                    Image(level.imageWithColor)
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                        .grayscale(isSelected ? Double(1) * 0.0 : Double(1) * 0.8999)
                        //.grayscale(©)
                        .shadow(color: Color.black.opacity(0.4), radius: 4, x: 2,y: 3)
                        /*.overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 4.0)
                                .shadow(color: Color.black.opacity(0.3), radius: 2, x: 1, y: 3)
                                .foregroundColor(Color("\(course.color1)")))*/
                        .padding(.top, 10)
                        .position( /// here!
                            x: level.coordinateX,
                            y:  level.coordinateY)
                        .onTapGesture {
                            isSelected = true
                        }
                
                
            }
            
        }
        .padding(.leading, 15)
    }
}

struct ItemsFromLevel_Previews: PreviewProvider {
    static var vm = HomeVM()
    static var previews: some View {
        ItemsFromLevel(level: vm.units[0].courses[0].levels[0])
    }
}
