//
//  StandardLanguageView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 06/05/2022.
//

import SwiftUI

struct StandardLanguageView: View {
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(Color("darkShadow"))
                .frame(width: 150, height: 150)
            VStack{
                
                Text("English")
                    .font(.custom("Poppins-Regular", size: 15))
                Text("American")
                    .font(.custom("Poppins-Light", size: 11))
                    .opacity(0.8)
                
                Image("englishAmerican")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipped()
            }
            
        }
        
    }
}

struct StandardLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        StandardLanguageView()
    }
}
