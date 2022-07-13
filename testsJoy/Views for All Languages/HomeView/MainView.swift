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
    @StateObject var vm = HomeVM()
    
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
                        .frame(maxWidth: .infinity)
                        //effect
                        .frame(height: getHeaderHeight(), alignment: .bottom)
                        .background(Color.blueGradient4.opacity(0.3)
                                    , in: CustomCorner(corners: [.bottomRight], radius: 40))
                        .overlay(
                        TopRowBtns(logo: "owlLogo", languageFlag: "1")
                            .frame(height: 80 + topEdge, alignment: .top)
                            .padding(.top, -140)
                            .padding(.horizontal)
                        
                        )
                        //.padding(.bottom, 30)
                    }
                    .frame(height: maxHeight)
                    //fixing at top
                    .offset(y: -offset)
                    .zIndex(1)
                    
                        
                        ForEach(vm.units, id:\.id){ uni in
                            CategoryRow(unit: uni)
                            //remover linha separator
                                .listRowSeparator(.hidden)
                                
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                    
                }
                .modifier(OffsetModifiers(offset: $offset))
            }
            //coordinate space
            .coordinateSpace(name: "SCROLL")

        
    }
    
    func getHeaderHeight() -> CGFloat{
        let topHeight = maxHeight + offset
        //80 é a contsant top nav bar height
        return topHeight > (80 + topEdge) ? topHeight : (80 + topEdge)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//fazer um topBar

