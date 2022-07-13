//
//  GameView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 05/07/2022.
//

import SwiftUI

struct ProgressView: View {
    var unit : Unit
    var course : Course
    
    var body: some View {
        /*ZStack {
            Rectangle()
                .fill(Color("\(unit.color)").opacity(0.8))
                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 180, alignment: .top)
                .edgesIgnoringSafeArea(.all)*/
            
            VStack {
                
                
                
                HStack {
                    Image(systemName: "chevron.backward")
                        .font(.custom("Poppins-Bold", size: 25))
                        .foregroundColor(Color.white.opacity(0.5))
                        .padding(.leading)
                        .padding(.bottom)
                    TopRowBtns(logo: "", languageFlag: "1")
                        .padding(.leading, -50)
                        
                }
                
                Divider()
                
                HStack{
                    
                    Text("1/10")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.trailing, 30)
                    
                    ProgressBar(progress: 30)
                }
                .padding(.bottom)
                    
            }
            .background(Color("\(unit.color)").opacity(0.8))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .top)
            
        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var vm = HomeVM()
    static var previews: some View {
        ProgressView(unit: vm.units[0],
                 course: vm.units[0].courses[0])
    }
}
