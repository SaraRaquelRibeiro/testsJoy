//
//  Items.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 22/06/2022.
//

import Foundation
import SwiftUI


struct Items : Identifiable {
    
    let id = UUID()
    var name : String
    var coordinatesX: Int
    var coordinatesY: Int
}
struct Item {
    
    static let chooseItem = [
        Items(
              name: "1",
              coordinatesX: 0,
              coordinatesY: 50),
       Items(
             name: "2",
             coordinatesX: 10,
             coordinatesY: 50),
       Items(
             name: "3",
             coordinatesX: 20,
             coordinatesY: 50),
       Items(
             name: "4",
             coordinatesX: 30,
             coordinatesY: 50),
       Items(
             name: "5",
             coordinatesX: 40,
             coordinatesY: 50),
       Items(
             name: "6",
             coordinatesX: 50,
             coordinatesY: 50),
       Items(
             name: "7",
             coordinatesX: 60,
             coordinatesY: 50),
       Items(
             name: "8",
             coordinatesX: 70,
             coordinatesY: 50
            )
    ]
}
