//
//  ExamplePosition.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/06/2022.
//

import SwiftUI

struct ExamplePosition: View {
    var item : Items
    
    var body: some View {
        ZStack {
            Image(self.schema.)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .border(Color.white)
                                .shadow(color: self.colorShadow ? Color.green : Color.gray.opacity(0.5) ,radius: 10)
                                .overlay(ZStack {
                                    ForEach(self.schema.item) { item in
                                        Text(String(item.id))
                                            .font(.headline)
                                            .foregroundColor(Color.black)
                                            .padding(5)
                                            .overlay(
                                                Circle().stroke(Color.black, lineWidth: 1)
                                            )
                                            .offset(x: 20, y: 100)
                                            .position(x: CGFloat(item.coordinatesX), y: CGFloat(item.coordinatesY))
                                    }
                                })
                        }
    }
}

struct ExamplePosition_Previews: PreviewProvider {
    static var previews: some View {
        ExamplePosition(item: Items(name: "", coordinatesX: 30, coordinatesY: 40))
    }
}
