//
//  buttons.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 16/06/2022.
//

import SwiftUI
    
    struct buttons: View {
        
        //var museum:Museum
        @State var visitIcon = "figure.walk.circle"
        @State var heart = "heart"
        
        var body: some View {
            HStack(spacing:60){
                    Button(action: {
                        museum.visited.toggle()
                        if(museum.visited){
                            visitIcon = "figure.walk.circle.fill"
                        }
                        else{
                            visitIcon = "figure.walk.circle"
                        }
                    }, label: {
                        VStack{
                            Image(systemName:visitIcon).resizable()
                                    .frame(width: 20, height: 20).foregroundColor(.black)
                            
                            Text("Visited").foregroundColor(.black)
                        }
                    })
                    Button(action: {
                        museum.favorite.toggle()
                        if(museum.favorite){
                            heart = "heart.fill"
                        }
                        else{
                            heart = "heart"
                        }
                    }, label: {
                    
                        VStack{
                            Image(systemName:heart).resizable()
                                .frame(width: 20, height: 20).foregroundColor(.black)
                            Text("Favorite").foregroundColor(.black)
                        }
                    })
            }.onAppear {
                if(museum.favorite){
                    visitIcon = "figure.walk.circle.fill"
                }
                else{
                    visitIcon = "figure.walk.circle"
                }
                if(museum.favorite){
                    heart = "heart.fill"
                }
                else{
                    heart = "heart"
                }
            }
        }
    }

struct buttons_Previews: PreviewProvider {
    static var previews: some View {
        buttons()
    }
}
