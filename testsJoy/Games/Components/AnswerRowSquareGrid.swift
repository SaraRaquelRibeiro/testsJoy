//
//  AnswerRowSquareGrid.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 23/06/2022.
//

import SwiftUI

struct AnswerRowSquareGrid: View {
    
    var imsgesTest: [ImageTest]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 30) {
            ForEach(0..<imsgesTest.count){ index in
                
                AnswerRowSquare(imageTest: imsgesTest[index])
                
            }
        }
        .padding(30)
    }
}

struct AnswerRowSquareGrid_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRowSquareGrid(imsgesTest: exampleImages)
    }
}
