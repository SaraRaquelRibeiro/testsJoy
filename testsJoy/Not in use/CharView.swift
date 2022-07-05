//
//  CharView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 23/06/2022.
//

import SwiftUI

struct CharView: View {
    var characterArray: [String]
        @State var characterLoopIndex: Int = -1
    let loopDuration: Double = 0.2
        
        init(input: String) {
            characterArray = input.map { String($0) }
        }
        
        var body: some View {
            HStack(spacing: 0) {
                ForEach(characterArray.indices) { index in
                    Text("\(characterArray[index])")
                        .font(.custom("Poppins-semibold", size: 19))
                        .foregroundColor(.white)
                        .background(Color.blueGradient2)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                        .opacity(characterLoopIndex >= index ? 1 : 0)
                        .animation(.linear(duration: loopDuration))
                }
            }
            .onAppear(perform: {
                startCharacterAnimation()
            })
        }
        
        func startCharacterAnimation() {
            let timer = Timer.scheduledTimer(withTimeInterval: loopDuration, repeats: true) { (timer) in
                
                characterLoopIndex += 1
                if characterLoopIndex >= characterArray.count {
                    timer.invalidate()
                }
                
            }
            timer.fire()
        }
}

struct CharView_Previews: PreviewProvider {
    static var previews: some View {
        CharView(input: "This is a test string")
    }
}

