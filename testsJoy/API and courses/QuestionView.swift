//
//  QuestionView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 07/06/2022.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        ZStack{
            Color(.white)
                
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(){
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.blueGradient3, Color.blueGradient2]), startPoint: .leading, endPoint: .bottom))
                        .frame(height: 80, alignment: .bottom)
                    
                    HStack{
                        
                        Text("1/12")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.trailing, 30)
                        
                        ProgressBar(progress: 50)
                    }
                }
                
            }
            .ignoresSafeArea(.container)
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
