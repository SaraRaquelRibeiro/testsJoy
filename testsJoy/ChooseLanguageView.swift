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
    
    @State var isSelected = false
    
    let layout   = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    
    
    
    var body: some View {
        
        NavigationView{
            ZStack {
                
                ScrollView(showsIndicators: false){
                    
                    VStack {
                        
                        VStack(alignment: .leading){
                                Text("Choose the language you want to learn!")
                                       .font(.custom("Poppins-Bold", size: 25))
                               Text("Select one language")
                                       .opacity(0.5)
                                       .font(.custom("Poppins-Light", size: 15))
                                       .frame(alignment: .bottomTrailing)
                                       .padding(5)
                        }
                        
                    }
                    .padding()
                    
                    LazyVGrid(columns: layout, content: {
                        
                        
                        
                        ForEach(0..<languages.count) { index in
                            Button(action: {
                                
                            }, label: {
                                StandardLanguageView(languages: languages[index])
                            })
                            
                            
                            
                        }
                       
                    })
                   
                }
                
                NavigationLink(destination: {
                    //ChooseLanguageView()
                }, label: {
                    Text("Let's Go")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        //.background(Color.orangeGradient2)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.orangeGradient1, Color.orangeGradient2]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                    
                })
                    .frame(maxHeight: .infinity, alignment: .bottom)
                
                
            }
            
            
        }
        .padding()
    }
    
       
}

struct ChooseLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseLanguageView(languages: languageSelection)
    }
}

