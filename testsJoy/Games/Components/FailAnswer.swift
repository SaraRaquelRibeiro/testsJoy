//
//  FailAnswer.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 14/06/2022.
//

import SwiftUI

struct FailAnswer: View {
    
    var text: String
    var textCorrectAnswer: String
    //meter aqui a correct answer caso o user tenha errado
    var correctAnswer : String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(backgroundColor)
            
            VStack {
                //mudar a letter type
                Text(text)
                    .font(.custom("Poppins-semibold", size: 22))
                    .foregroundColor(textColor)
                   
                
                
                    Text(textCorrectAnswer)
                        .font(.custom("Poppins-regular", size: 18))
                        .foregroundColor(textColor)
                        
                    Text(correctAnswer)
                        .font(.custom("Poppins-medium", size: 20))
                        .foregroundColor(textColor)
                
            }
            .padding(.leading, -120)
            
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)    // << here !!
        .padding(.top, 61)
        .edgesIgnoringSafeArea(.all)
    }
}

struct FailAnswer_Previews: PreviewProvider {
    static var previews: some View {
        FailAnswer(text: "",
                   textCorrectAnswer: <#String#>,
                   correctAnswer: <#String#>,
                   textColor: <#Color#>,
                   backgroundColor: <#Color#>)
    }
}
