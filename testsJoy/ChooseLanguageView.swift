//
//  ChooseLanguageView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 05/05/2022.
//

import SwiftUI

struct ChooseLanguageView: View {
    var body: some View {
        ZStack{
            VStack{
             Text("Choose the language you want to learn!")
                    .font(.custom("Poppins-Bold", size: 25))
            Text("Select one language")
                    .opacity(0.5)
                    .font(.custom("Poppins-Light", size: 15))
                
                VStack{
                    
                    HStack{
                        
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 150, height: 150)
                            
                        
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 150, height: 150)
                            .border(.pink).cornerRadius(30)
                        
                    }
                    
                }
            }
        }
    }
}

struct ChooseLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseLanguageView()
    }
}
