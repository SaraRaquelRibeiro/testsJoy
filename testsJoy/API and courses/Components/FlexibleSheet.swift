//
//  FlexibleSheet.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 15/06/2022.
//

import SwiftUI

enum SheetMode{
    case half
    case quarter
}

struct FlexibleSheet<Content: View>: View {
    let content: () -> Content
    var sheetMode: Binding<SheetMode>
    
    init(sheetMode: Binding<SheetMode>, @ViewBuilder content: @escaping () -> Content){
        self.content = content
        self.sheetMode = sheetMode
    }
    
    private func calculateOffSet() -> CGFloat {
        switch sheetMode.wrappedValue{
       
        case .quarter:
            return UIScreen.main.bounds.height - 200
            
        case .half:
            return UIScreen.main.bounds.height/200
        
        }
    }
    
    var body: some View {
        content()
            .offset(y: calculateOffSet())
            .animation(.spring())
            .edgesIgnoringSafeArea(.all)
    }
}

struct FlexibleSheet_Previews: PreviewProvider {
    static var previews: some View {
        FlexibleSheet(sheetMode: .constant(.quarter)) {
            VStack{
                Text("Sara Raquel")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        }
    }
}

