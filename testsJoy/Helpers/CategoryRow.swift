//
//  CategoryRow.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/06/2022.
//

import SwiftUI

struct CategoryRow: View {
    var unit : Unit
   
    
    
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        VStack(alignment: .leading){
            
            
            HStack{
                Text(unit.name)
                    .font(.custom("Poppins-SemiBold", size: 21))
                    .opacity(0.8)
                    .foregroundColor(.black)
                    .padding(.leading, 15)
                    .padding(.top, 5)
                
                unit.badge
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.pink)
                    .font(.system(size: 6))
                
                
                Text(unit.description)
                    .font(.custom("Poppins-regular", size: 16))
                    .opacity(0.8)
                    .foregroundColor(.black)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 0){
                    ForEach(unit.courses){ course in
                        NavigationLink {
                            
                            courseOneUnitOne(answer: Answer(text: "", isCorrect: true), showSheet: true)
                            
                        } label: {
                        CategoryItem(course: course)
                        }
                       
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    
    static var vm = HomeVM()
    
    static var previews: some View {
        CategoryRow(unit: vm.units[0])
    }
}
