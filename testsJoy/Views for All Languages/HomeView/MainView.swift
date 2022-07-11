//
//  MainView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 11/07/2022.
//

import SwiftUI

struct MainView: View {
    
    let maxHeight = UIScreen.main.bounds.height / 2.3
    
    var topEdge: CGFloat
    
    @State var offset: CGFloat = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 10) {

                GeometryReader{ proxy in
                    
                    VStack(alignment: .leading, spacing: 15){
                        
                        HStack{
                            
                            Challenges(challenge: dailyChallenge1)
                        }
                        .padding()
                        .padding(.bottom, 30)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .bottom)
                    .background(Color.blueGradient4.opacity(0.3)
                                , in: CustomCorner(corners: [.bottomRight], radius: 50))
                    //.padding(.bottom, 30)
                }
                .frame(height: maxHeight)
            }
            .modifier(OffsetModifiers(offset: $offset))
        }
        //coordinate space
        .coordinateSpace(name: "SCROLL")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


