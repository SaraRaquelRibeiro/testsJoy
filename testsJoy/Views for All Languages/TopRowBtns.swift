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
                    .frame(width: 35)
            })
                .buttonStyle(PlainButtonStyle())
            
                
            Spacer()
            ZStack{
                Capsule()
                    .fill(Color.white)
                    .frame(width: 80, height: 28)
                    .shadow(color: Color.black.opacity(0.12), radius: 0.7, y: 2)
                
                
                HStack {
                    Image("coin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18)
                        .padding(.leading, -10)
                    //aqui colocar os diamonds que o user vai ganhar à medida q for finalizando os jogos
                    Text("45.0")
                        .font(.custom("Poppins-semibold", size: 14))
                        .opacity(0.4)
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
            ZStack{
                Capsule()
                    .fill(Color.white)
                    .frame(width: 80, height: 28)
                    .shadow(color: Color.black.opacity(0.12), radius: 0.7, y: 2)
                
                HStack {
                    Image("heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16)
                        .padding(.leading, -10)
                    //aqui colocar as vidas que o user vai ganhar à medida q for finalizando os jogos
                    Text("100")
                        .font(.custom("Poppins-semibold", size: 14))
                        .opacity(0.4)
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
           
            
            FlagSelected(color: .blue, imageFlag: languageFlag)
                
        }
        //.background(Color.red)
        .padding(.leading, 25)
        .padding(.trailing, 25)
        .padding(.top, -260)
        
    }
}

struct TopRowBtns_Previews: PreviewProvider {
    static var previews: some View {
        TopRowBtns(logo: "owlLogo", languageFlag: "1")
    }
}
