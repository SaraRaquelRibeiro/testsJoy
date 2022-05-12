//
//  EnglishAmericanLevelView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 12/05/2022.
//

import SwiftUI

struct EnglishAmericanLevelView: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                ZStack (alignment: .leading) {
                    Text("Choose your level")
                        .font(.custom("Poppins-Bold", size: 25))
                        .lineLimit(2)
                    .frame(width: 300)
                }
                Spacer()
                
                VStack {
                    
                    HStack{
                        Spacer()
                        
                        VStack{
                            HStack{
                                Text("This is a text message.")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color(UIColor.systemBlue))
                                    .clipShape(BubbleShape())
                            }
                        }
                    }
                    
                    
                    HStack {
                        Image("owl-hat")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 200)
                        .clipped()
                    }
                    .padding(-100)
                    
                }
                Spacer()
            }
        }
    }
}

struct EnglishAmericanLevelView_Previews: PreviewProvider {
    static var previews: some View {
        EnglishAmericanLevelView()
    }
}

struct BubbleShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 20, y: height))
        path.addLine(to: CGPoint(x: width-15, y: height))
        path.addLine(to: CGPoint(x: width, y: 15))
        
        return Path(path.cgPath)
    }
}
