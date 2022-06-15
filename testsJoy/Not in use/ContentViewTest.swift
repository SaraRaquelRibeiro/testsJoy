//
//  ContentViewTest.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 11/05/2022.
//

import SwiftUI
class PlayerModel {
    let name: String
    var isSelected : Bool = false
    init(_ name: String){
        self.name = name
    }
}
class AppModel: ObservableObject {
    let players : [PlayerModel] = [PlayerModel("Crown") , PlayerModel("King") ,PlayerModel("Queen") ,PlayerModel("Prince")]
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

    var body: some View {
        Button(action: {
            self.action()
        }) {
            Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
        }
    }
}

struct ContentViewTest: View {
    @ObservedObject var model = AppModel()
    var body: some View {
        VStack {
            ForEach(model.players, id: \.name) { player in
                HStack {
                    Text(player.name)
                    PlayButton(isSelected: player.isSelected, action: { self.model.selectPlayer(player) })
                }
            }
        }
    }
}

struct ContentViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTest()
    }
}
