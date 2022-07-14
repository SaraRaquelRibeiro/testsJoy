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
                        TopBar(
                            topEdge: topEdge,
                            offset: $offset,
                            maxHeight: maxHeight)
                        .frame(maxWidth: .infinity)
                        //effect
                        .frame(height: getHeaderHeight(), alignment: .bottom)
                        .background(Color.white
                                    , in: CustomCorner(corners: [.bottomRight], radius: getCornerRadius()))
                        .overlay(
                        
                            //Top Nav View...
                            HStack(spacing: 15){
                                /*Button(action: {
                                    
                                }, label: {
                                    Image("owlLogo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 45, height: 45)
                                })
                                Spacer()
                                Button(action: {
                                    
                                }, label: {
                                    Image("1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                })*/
                                TopRowBtns(logo: "owlLogo",
                                           languageFlag: "1")
                            }
                                .padding(.horizontal)
                                .frame(height: 60)
                                .padding(.top, topEdge)
                            , alignment: .top
                        )
                    }
                    .frame(height: maxHeight)
                    //fixing at top
                    .offset(y: -offset)
                    .zIndex(1)
                    
                        
                    VStack (spacing: 15){
                        ForEach(vm.units, id:\.id){ uni in
                                CategoryRow(unit: uni)
                                //remover linha separator
                                    .listRowSeparator(.hidden)
                                    
                            }
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                    .zIndex(0)
                        
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
    
    func getCornerRadius() -> CGFloat{
        let progress = -offset / (maxHeight - (80 + topEdge))
        let value = 1 - progress
        let radius = value * 40
        return offset < 0 ? radius : 50
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//fazer um topBar
struct TopBar : View {
    var topEdge: CGFloat
    @Binding var offset : CGFloat
    var maxHeight : CGFloat
    var body : some View{
        VStack(alignment: .leading, spacing: 15){
            Challenges(challenge: dailyChallenge1)
        }
        .padding()
        .padding(.bottom)
        .opacity(getOpacity())
    }
    
    func getOpacity()->CGFloat{
        //70 tempo p ficar visivel no scroll
        let progress = -offset / 140
        let opacity = 1 - progress
        return offset < 0 ? opacity : 1
    }
}


