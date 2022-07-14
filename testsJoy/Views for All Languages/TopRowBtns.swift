//
//  TopRowBtns.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/06/2022.
//

import SwiftUI

struct TopRowBtns: View {
    
    var logo : String
    var languageFlag : String
    
    var body: some View {
        HStack {
            
            Button(action: {
                //
            }, label: {
                Image(logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
            })
                .buttonStyle(PlainButtonStyle())
                //.padding(.leading)
            
                
            Spacer()
            /*HStack {
                ZStack{
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 220, height: 32)
                        .shadow(color: Color.black.opacity(0.15), radius: 2, y: 2)
                    HStack {
                        Spacer()
                        Text("$")
                            .foregroundColor(.black)
                            .opacity(0.6)
                            .padding(.leading, -10)
                        //aqui colocar os diamonds que o user vai ganhar à medida q for finalizando os jogos
                        Text("45.0")
                            .font(.custom("Poppins-regular", size: 14))
                            .opacity(0.6)
                            .foregroundColor(.black)
                        HStack{
                            Image("heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16)
                                .padding(.leading, -10)
                            //aqui colocar as vidas que o user vai ganhar à medida q for finalizando os jogos
                            Text("100")
                                .font(.custom("Poppins-regular", size: 14))
                                .opacity(0.6)
                                .foregroundColor(.black)
                        }
                        .padding(.leading, 40)
                        Spacer()
                    }
                }
                .padding(.trailing, -120)
                FlagSelected(color: .blue, imageFlag: languageFlag)
                    .padding()
            }
            .padding(.trailing)*/
            Spacer()
            HStack (spacing: 13){
                HStack(spacing: 5){
                    Text("$")
                    Text("45")
                }
                .padding()
                Text("|")
                HStack(spacing: 5){
                    Image("heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16)
                    Text("100")
                }
                FlagSelected(color: .blue, imageFlag: languageFlag)
                    .padding(.trailing, -13)
                    .padding(.top, 5)
            }
            .frame(height: 40)
            .background(Color.white)
            .cornerRadius(50)
            .shadow(color: Color.black.opacity(0.15), radius: 2, y: 2)
            .font(.custom("Poppins-regular", size: 14))
            .opacity(0.7)
            .foregroundColor(.black)
            
            /*HStack(spacing: 13){
                HStack(spacing: 5){
                    Text("$")
                    Text("951.60")
                }
                .padding()
                Text("|")
                HStack(spacing: 5){
                    Image(systemName: "heart.fill")
                    Text("3")
                }
                FlagSelected(color: .blue, imageFlag: languageFlag)
                    .padding(.trailing, -14)
            }
            .frame(height: 35)
            .font(.custom("Poppins-semibold", size: 16))
            .background(Color.gray1)
            .foregroundColor(.white)
            .cornerRadius(50)*/
            
            
           
        }
        .padding(.leading, 25)
        .padding(.trailing, 25)
    }
}

struct TopRowBtns_Previews: PreviewProvider {
    static var previews: some View {
        TopRowBtns(logo: "owlLogo", languageFlag: "1")
    }
}
