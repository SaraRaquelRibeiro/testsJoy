//
//  ButtonTrial.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 16/05/2022.
//

import SwiftUI
import Kingfisher

struct ButtonTrial: View {
    
    @Binding var isSelected: Bool
    @State var color2: Color
    @State var color1: Color
    @State var textTitle: String
    @State var conditions: String
    @State var price: String
    @State var textTag : String
    
    var body: some View {
        
        
        VStack {
            ZStack{
                
                RoundedRectangle(cornerRadius: 30)
                    //.stroke(isSelected ? Color.white : Color.white, style: StrokeStyle(lineWidth: 5.5))
                    //.background(RoundedRectangle(cornerRadius: 30).fill(.white))
                    .fill(.white)
                    .frame(width: 340, height: 130)
                    .shadow(color: Color.black.opacity(0.3), radius: 1, y: 5)
                
                /*Text(textTag)
                    .font(.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 42)
                    //.background(Color.orangeGradient2)
                    .background(LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(18)
                    .padding(.top, -78)
                    .padding(.leading, -105)*/
                
               
                
                ZStack{
                    RoundedRectangle(cornerRadius: 19)
                        .fill(LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 200, height: 42)
                        .shadow(color: Color.black.opacity(0.05), radius: 1, y: 5)
                    
                    Text(textTag)
                        .font(.custom("Poppins-SemiBold", size: 20))
                        .foregroundColor(Color.white)
                }
                .padding(.top, -78)
                .padding(.leading, -150)
                    
                HStack{
                    VStack (alignment: .leading){
                        Text(textTitle)
                            .font(.custom("Poppins-SemiBold", size: 24))
                            .foregroundColor(Color("blueDark"))
                            .padding(.top, 30)
                        
                        Text(conditions)
                            .font(.custom("Poppins-SemiBold", size: 17))
                            .foregroundColor(Color("blueMedium"))
                            .padding(.top, -5)
                    }
                    .padding(.leading, 50)
                    Spacer()
                    
                    Text(price)
                        .font(.custom("Poppins-Bold", size: 17))
                        .foregroundColor(Color("blueMedium"))
                        .padding(.trailing,40)
                }
                   
                
            }
            
           
        }
    }
}

struct ButtonTrial_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTrial(isSelected: .constant(false),
                    color2: .greenGradient2,
                    color1: .greenGradient1,
                    textTitle: "Individual",
                    conditions: "12 months: €65.99",
                    price: "€5.67 / MO",
                    textTag: "Most Popular")
    }
}
