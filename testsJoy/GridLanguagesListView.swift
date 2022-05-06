//
//  GridLanguagesView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 06/05/2022.
//

import SwiftUI

struct GridLanguagesListView: View {
    
    //criar 2 colunas através de gridItems
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        //LazyVGrid{
            
            
        //}
        Text("example")
        
        
    }
}

struct GridLanguagesView_Previews: PreviewProvider {
    static var previews: some View {
        GridLanguagesListView()
    }
}
