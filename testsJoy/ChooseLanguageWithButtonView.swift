//
//  ChooseLanguageWithButtonView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 11/05/2022.
//

import SwiftUI

struct ChooseLanguageWithButtonView: View {
    
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    @State private var isSelected5 = false
    @State private var isSelected6 = false
    @State private var showAlert = false
    @State private var alertText = ""
    
    var body: some View {
        VStack {
            ScrollView (showsIndicators: false) {
                VStack(spacing: 20){
                    VStack(alignment: .leading){
                            Text("Choose the language you want to learn!")
                                   .font(.custom("Poppins-Bold", size: 25))
                           Text("Select one language")
                                   .opacity(0.5)
                                   .font(.custom("Poppins-Light", size: 15))
                                   .frame(alignment: .bottomTrailing)
                                   .padding(5)
                    }
                    
                    
                    HStack (spacing: 30){
                        ButtonLanguage(
                            isSelected: $isSelected1,
                            color: .orangeGradient1,
                            textTitle: "English",
                            textSubtitle: "American",
                            imageLang: "englishAmerican"
                        )
                            .onTapGesture(perform: {
                                
                                isSelected1.toggle()
                                
                                if isSelected1 {
                                    isSelected2 = false
                                    isSelected3 = false
                                    isSelected4 = false
                                    isSelected5 = false
                                    isSelected6 = false
                                }
                            })
                        
                        ButtonLanguage(
                            isSelected: $isSelected2,
                            color: .orangeGradient1,
                            textTitle: "English",
                            textSubtitle: "British",
                            imageLang: "telephone"
                        )
                            .onTapGesture(perform: {
                                
                                isSelected2.toggle()
                                
                                if isSelected2 {
                                    isSelected1 = false
                                    isSelected3 = false
                                    isSelected4 = false
                                    isSelected5 = false
                                    isSelected6 = false
                                }
                            })
                    }
                    
                    
                    HStack (spacing: 30){
                        ButtonLanguage(
                            isSelected: $isSelected3,
                            color: .orangeGradient1,
                            textTitle: "Chinese",
                            textSubtitle: "",
                            imageLang: "chineseLang"
                        )
                            .onTapGesture(perform: {
                                
                                isSelected3.toggle()
                                
                                if isSelected3 {
                                    isSelected1 = false
                                    isSelected2 = false
                                    isSelected4 = false
                                    isSelected5 = false
                                    isSelected6 = false
                                }
                            })
                        
                        ButtonLanguage(
                            isSelected: $isSelected4,
                            color: .orangeGradient1,
                            textTitle: "Portuguese",
                            textSubtitle: "Brazil",
                            imageLang: "tucano"
                        )
                            .onTapGesture(perform: {
                                
                                isSelected4.toggle()
                                
                                if isSelected4 {
                                    isSelected1 = false
                                    isSelected2 = false
                                    isSelected3 = false
                                    isSelected5 = false
                                    isSelected6 = false
                                }
                            })
                    }
                    
                    HStack (spacing: 30){
                        ButtonLanguage(
                            isSelected: $isSelected5,
                            color: .orangeGradient1,
                            textTitle: "Spanish",
                            textSubtitle: "Spain",
                            imageLang: "spanish"
                        )
                            .onTapGesture(perform: {
                                
                                isSelected5.toggle()
                                
                                if isSelected5 {
                                    isSelected1 = false
                                    isSelected2 = false
                                    isSelected4 = false
                                    isSelected3 = false
                                    isSelected6 = false
                                }
                            })
                        
                        ButtonLanguage(
                            isSelected: $isSelected6,
                            color: .orangeGradient1,
                            textTitle: "German",
                            textSubtitle: "",
                            imageLang: "germanLanguage"
                        )
                            .onTapGesture(perform: {
                                
                                isSelected6.toggle()
                                
                                if isSelected6 {
                                    isSelected1 = false
                                    isSelected2 = false
                                    isSelected3 = false
                                    isSelected5 = false
                                    isSelected4 = false
                                }
                            })
                    }
                    
                    
                    
                }
                .padding()
            }
            NavigationLink(destination: {
                
            }, label: {
                Text("Let's Go")
                    .bold()
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 50)
                    //.background(Color.orangeGradient2)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.orangeGradient1, Color.orangeGradient2]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                
            })
                //.frame(maxHeight: .infinity, alignment: .bottom)
        }
        
    }
}

struct ChooseLanguageWithButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseLanguageWithButtonView()
    }
}
