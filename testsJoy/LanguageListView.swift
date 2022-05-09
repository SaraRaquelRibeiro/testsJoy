//
//  LanguageListView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 06/05/2022.
//

import SwiftUI

struct LanguageListView: View {
    
    var languages: [Language] = LanguagesList.chooselanguage
    
    //variavel para ajudar/preencher a animação da linha laranja
    @State var fill: CGFloat = 0.0
    
    
    //criar 3 colunas através de gridItems
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ZStack {
            ScrollView(showsIndicators: false){
                VStack{
                        
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
                    
                    LazyVGrid (columns: columns) {
                        
                        ForEach(languages, id: \.id) { language in
                            
                            ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color("darkShadow").opacity(0.6), style: StrokeStyle(lineWidth: 5.5))
                                        //.strokeBorder(Color("darkShadow"))
                                        .frame(width: 150, height: 150)
                                        .padding(.vertical, 8)
                                    
                                    //animation rectangle
                                    RoundedRectangle(cornerRadius: 30)
                                        .trim(from: 0, to: self.fill)
                                        .stroke(Color.orangeGradient1, style: StrokeStyle(lineWidth: 5))
                                        //.strokeBorder(Color("darkShadow"))
                                        .frame(width: 150, height: 150)
                                        .rotationEffect(.init(degrees: -90))
                                        .animation(Animation.linear(duration: 0.01))
                                        .padding(.vertical, 8)
                                    
                                
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
                            .onTapGesture(perform: {
                                self.fill = 1.0
                            })
                            
                        }
                    }
            }
                 
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
}

struct LanguageListView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageListView()
    }
}





