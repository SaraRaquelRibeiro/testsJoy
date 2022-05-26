//
//  ChooseLanguageWithButtonView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 11/05/2022.
//

import SwiftUI

struct ChooseLanguageWithButtonView: View {
    
    @State var isSelected1 = false
    @State var isSelected2 = false
    @State var isSelected3 = false
    @State var isSelected4 = false
    @State var isSelected5 = false
    @State var isSelected6 = false
    
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
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
                            Spacer()
                        }
                        .padding(.top, -25)
                        
                        HStack (spacing: 30){
                            ButtonLanguage(
                                isSelected: $isSelected1,
                                color: .orangeGradient1,
                                textTitle: "English",
                                textSubtitle: "American",
                                imageLang: "englishAmerican",
                                imageFlag: "1"
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
                                imageLang: "telephone",
                                imageFlag: "0"
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
                                imageLang: "chineseLang",
                                imageFlag: "5"
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
                                imageLang: "tucano",
                                imageFlag: "2"
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
                                imageLang: "spanish",
                                imageFlag: "3"
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
                                imageLang: "germanLanguage",
                                imageFlag: "4"
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
                    if isSelected1 {
                       EnglishAmericanLevelView()
                       
                    } else if isSelected2 {
                        
                    } else if isSelected3 {
                        
                    } else if isSelected4 {
                        PortugueseBrazilLevelView()
                        
                    } else if isSelected5 {
                        
                    } else if isSelected6 {
                        
                    }
                }, label: {
                    Text("Let's Go")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        //.background(Color.orangeGradient2)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.orangeGradient1, Color.orangeGradient2]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                    
                })
                    .navigationBarBackButtonHidden(true)
            }
        }
        
        
    }
}

struct ChooseLanguageWithButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseLanguageWithButtonView()
    }
}




