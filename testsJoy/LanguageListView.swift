//
//  LanguageListView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 06/05/2022.
//

import SwiftUI

struct LanguageListView: View {
    
    var languages: [Language] = LanguagesList.chooselanguage
    
    
    //criar 3 colunas através de gridItems
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        LazyVGrid (columns: columns) {
            ForEach(languages, id: \.id) { language in
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 30)
                        .strokeBorder(Color("darkShadow"))
                        .frame(width: 150, height: 150)
                    VStack{
                        
                        Text(language.languageTitle).tag(language.languageTitle)
                            .font(.custom("Poppins-Regular", size: 15))
                            .padding(-5)
                        Text(language.languageType)
                            .font(.custom("Poppins-Light", size: 11))
                            .opacity(0.8)
                            .padding(-5)
                        
                        Image(language.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFill()
                            .frame(width: 90, height: 110, alignment: .center)
                            .clipped()
                    }
                    
                }
                
            }
        }
    }
}

struct LanguageListView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageListView()
    }
}
