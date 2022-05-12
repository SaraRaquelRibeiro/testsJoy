//
//  ContentViewTest.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 11/05/2022.
//

import SwiftUI
class PlayerModel {
    let name : String
    
    var isSelected : Bool = false
    init(_ name: String){
        self.name = name
    }
}
class AppModel: ObservableObject {
    let players : [PlayerModel] = [PlayerModel("Crown"), PlayerModel.init("King"),PlayerModel("Queen") ,PlayerModel("Prince")]
    
    var activePlayerIndex: Int?
    init(){

    }
    func selectPlayer(_ player: PlayerModel){
        players.forEach{
                $0.isSelected = false
        }
        player.isSelected = true
        objectWillChange.send()
    }
}
struct PlayButton: View {
    let isSelected: Bool
    let action : ()->Void

    @State var fill: CGFloat = 0.0
    
    var body: some View {
        Button(action: {
            self.fill = 1.0
            self.action()
            
            
        }) {
            if isSelected{
                //animation rectangle
                    RoundedRectangle(cornerRadius: 30)
                    .trim(from: 0, to: self.fill)
                    .stroke(Color.orangeGradient1, style: StrokeStyle(lineWidth: 5))
                //.strokeBorder(Color("darkShadow"))
                    .frame(width: 150, height: 150)
                    .rotationEffect(.init(degrees: -90))
                    .animation(Animation.linear(duration: 0.01))
                    .padding(.vertical, 8)
            }
            else{
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color("darkShadow").opacity(0), style: StrokeStyle(lineWidth: 5.5))
                //.strokeBorder(Color("darkShadow"))
                    .frame(width: 150, height: 150)
                    .padding(.vertical, 8)
            }
            
        }
    }
}

struct ContentViewTest: View {
    @ObservedObject var model = AppModel()
    var languages: [Language]
    
    let layout = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical) {
                LazyVGrid(columns: layout, content: {
                    VStack {
                        ForEach(model.players, id: \.name) { player in
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color("darkShadow").opacity(0.6), style: StrokeStyle(lineWidth: 5.5))
                                    //.strokeBorder(Color("darkShadow"))
                                        .frame(width: 150, height: 150)
                                        .padding(.vertical, 8)
                                    ZStack {
                                        VStack{
                                            Text(player.name)
                                            
                                        }
                                        
                                       
                                        PlayButton(isSelected: player.isSelected, action: { self.model.selectPlayer(player) })
                                    }
                                }
                            }
                    }
                })
            }
        }
        
    }
}

struct ContentViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTest(languages: languageSelection)
    }
}
