//
//  ChooseLanguageView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 05/05/2022.
//

import SwiftUI

struct ChooseLanguageView: View {
    
    var languages: [Language]
    
    
    //variavel para ajudar/preencher a animação da linha laranja
    @State var fill: CGFloat = 0.0
    
    @State private var checked: [Bool] = [true, true, true]
    
    let layout = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                LazyVGrid(columns: layout, content: {
                    
                    
                    
                    ForEach(0..<languages.count) { index in
                        
                        StandardLanguageView(languages: languages[index] )
                         
                        
                    }
                   
                })
                    
            }
            
        }
    }
    
       
}

struct ChooseLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseLanguageView(languages: languageSelection)
    }
}
