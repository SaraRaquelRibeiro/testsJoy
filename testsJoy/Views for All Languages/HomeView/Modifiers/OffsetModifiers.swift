//
//  OffsetModifiers.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 11/07/2022.
//

import SwiftUI

struct OffsetModifiers: ViewModifier {
    @Binding var offset: CGFloat
    
    func body(content: Content) -> some View {
        content
            .overlay(
                GeometryReader{ proxy -> Color in
                    //dar espaço para coordinate value
                    let minY = proxy.frame(in: .named("SCROLL")).minY
                    DispatchQueue.main.async {
                        self.offset = minY
                    }
                    return Color.clear
                }
            
            )
    }
}

