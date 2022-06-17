//
//  Tests.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 16/06/2022.
//

import SwiftUI

struct Tests: View {
    
    @State var lottieAnim = LottieView(fileName: "checkmark")
    @State var lottie = LottieView(fileName: "coinsWin1")
    var body: some View {
        VStack{
            
            lottieAnim
            
            
            Button("Basic button"){
                
            }
            .onAppear(perform: {
                lottie
            })
            Spacer()
        }
    }
}

struct Tests_Previews: PreviewProvider {
    static var previews: some View {
        Tests()
    }
}
