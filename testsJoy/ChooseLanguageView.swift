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
            ScrollView(showsIndicators: false){
                VStack{
                    
                    VStack(alignment: .leading){
                        Text("Choose the language you want to learn!")
                               .font(.custom("Poppins-Bold", size: 25))
                       Text("Select one language")
                               .opacity(0.5)
                               .font(.custom("Poppins-Light", size: 15))
                               .frame(alignment: .bottomTrailing)
                               .padding(5)
                    }
                 
                    
                    VStack{
                        //1a linha de ingles american e ingles british
                        HStack{
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .strokeBorder(Color("darkShadow"))
                                    .frame(width: 150, height: 150)
                                VStack{
                                    
                                    Text("English")
                                        .font(.custom("Poppins-Regular", size: 15))
                                    Text("American")
                                        .font(.custom("Poppins-Light", size: 11))
                                        .opacity(0.8)
                                    
                                    Image("englishAmerican")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFill()
                                        .frame(width: 100, height: 100, alignment: .center)
                                        .clipped()
                                }
                            }.padding(20)
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .strokeBorder(Color("darkShadow"))
                                    .frame(width: 150, height: 150)
                                VStack{
                                    
                                    Text("English")
                                        .font(.custom("Poppins-Regular", size: 15))
                                    Text("British")
                                        .font(.custom("Poppins-Light", size: 11))
                                        .opacity(0.8)
                                        .padding(-10)
                                    Image("telephone")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFill()
                                        .frame(width: 100, height: 110, alignment: .center)
                                        .clipped()
                                }
                            }.padding(20)
                        }
                        
                        //2a linha de chines e portugues brasil
                        HStack{
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .strokeBorder(Color("darkShadow"))
                                    .frame(width: 150, height: 150)
                                VStack{
                                    
                                    Text("Chinese")
                                        .font(.custom("Poppins-Regular", size: 15))
                                    Text("")
                                        .font(.custom("Poppins-Light", size: 11))
                                        .opacity(0.8)
                                    
                                    Image("chineseLang")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFill()
                                        .frame(width: 75, height: 120, alignment: .center)
                                        .clipped()
                                }
                            }.padding(20)
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .strokeBorder(Color("darkShadow"))
                                    .frame(width: 150, height: 150)
                                VStack{
                                    
                                    Text("Portuguese")
                                        .font(.custom("Poppins-Regular", size: 15))
                                    Text("Brazil")
                                        .font(.custom("Poppins-Light", size: 11))
                                        .opacity(0.8)
                                        .padding(-10)
                                    Image("tucano")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFill()
                                        .frame(width: 100, height: 110, alignment: .center)
                                        .clipped()
                                }
                            }.padding(20)
                        }
                        
                        //3a linha de spanish e german
                        HStack{
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .strokeBorder(Color("darkShadow"))
                                    .frame(width: 150, height: 150)
                                VStack{
                                    
                                    Text("Spanish")
                                        .font(.custom("Poppins-Regular", size: 15))
                                        .padding(-5)
                                    Text("")
                                        .font(.custom("Poppins-Light", size: 11))
                                        .opacity(0.8)
                                        
                                    
                                    Image("spanish")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFill()
                                        .frame(width: 120, height: 120, alignment: .center)
                                        .clipped()
                                        
                                }
                            }.padding(20)
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 30)
                                    .strokeBorder(Color("darkShadow"))
                                    .frame(width: 150, height: 150)
                                VStack{
                                    
                                    Text("German")
                                        .font(.custom("Poppins-Regular", size: 15))
                                        .padding(-2)
                                    Text("")
                                        .font(.custom("Poppins-Light", size: 11))
                                        .opacity(0.8)
                                        .padding(-10)
                                    Image("germanLanguage")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFill()
                                        .frame(width: 100, height: 120, alignment: .center)
                                        .clipped()
                                }
                            }.padding(20)
                        }
                    }
                }
            }
            
            NavigationLink(destination: {
                ChooseLanguageView()
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

struct ChooseLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseLanguageView()
    }
}
