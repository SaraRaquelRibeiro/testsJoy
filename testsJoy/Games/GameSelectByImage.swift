//
//  GameSelectByImage.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/06/2022.
//

import SwiftUI


//******* jogo em que aparecem 4 imagens para selecionar a correcta
struct GameSelectByImage: View {
    
    //*** criar as variáveisp fazer as chamadas
    
    @State var question : String
    
    @State var word : String
    
    var body: some View {
        
        ZStack{
            //menu do topo
            topRowButtons()
                .padding(.top, -130)
            
            VStack(alignment: .center){
                
                //QUESTION
                VStack(alignment: .leading, spacing: 20){
                    Text(question)
                        .font(.custom("Poppins-semibold", size: 18))
                        .foregroundColor(Color.blueGradient2)
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "speaker.zzz.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.blueGradient2)
                            .font(.caption)
                            .frame(width: 35, height: 35)
                            .shadow(color: .gray.opacity(0.4), radius: 1, x: -1, y: 3)
                        
                    })
                }
               
                
                Text(word)
                    .font(.custom("Poppins-semibold", size: 24))
                    .foregroundColor(Color.black.opacity(0.6))
                    
                    
            }
            
            //BOTTOM
            VStack(){
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.blueGradient3, Color.blueGradient2]), startPoint: .leading, endPoint: .bottom))
                        .frame(height: 80, alignment: .bottom)
                    
                    HStack{
                        
                        Text("1/10")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.trailing, 30)
                        
                        ProgressBar(progress: 30)
                    }
                }
                
            }
            .ignoresSafeArea(.container)
            
        }
        .navigationBarHidden(true)
        
    }
}

struct GameSelectByImage_Previews: PreviewProvider {
    static var previews: some View {
        GameSelectByImage(question: "What is the meaning?", word: "Water")
    }
}
