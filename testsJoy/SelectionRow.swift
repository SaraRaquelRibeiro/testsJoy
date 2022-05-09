//
//  SelectionRow.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 09/05/2022.
//

import SwiftUI

struct SelectionRow: View {
    
    let title: String
    
    @Binding var  selectedItem: String?
    
    //variavel para ajudar/preencher a animação da linha laranja
    @State var fill: CGFloat = 0.0
    
    var body: some View {
        VStack{
            
           
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
        .onTapGesture(perform: {
            self.fill = 1.0
        })
    }
}

struct SelectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectionRow(title: "NoName", selectedItem: .constant("NoName"))
    }
}
