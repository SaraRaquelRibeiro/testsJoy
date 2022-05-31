//
//  PortugueseBrazilLevelView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 12/05/2022.
//

import SwiftUI

struct PortugueseBrazilLevelView: View {
   
    var body: some View {
        
        ZStack{
            FlagSelected(color: .pink, imageFlag: "2")
            
        }
     

    }
}

struct PortugueseBrazilLevelView_Previews: PreviewProvider {
    static var previews: some View {
        PortugueseBrazilLevelView()
    }
}
