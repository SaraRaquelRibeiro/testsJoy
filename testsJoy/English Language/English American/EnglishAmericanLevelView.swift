//
//  EnglishAmericanLevelView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 12/05/2022.
//

import SwiftUI

struct EnglishAmericanLevelView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.9
    
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
                                HStack{
                                    VStack {
                                        Text("Don't be shy,")
                                            .font(.custom("Poppins-Medium", size: 17))
                                            .scaleEffect(size)
                                            .opacity(opacity)
                                            .animation(Animation.easeOut.delay(0.9))
                                        
                                        Text("improve your skills")
                                            .font(.custom("Poppins-Medium", size: 17))
                                            .scaleEffect(size)
                                            .opacity(opacity)
                                            /*.onAppear {
                                                withAnimation(.easeIn(duration: 0.6)) {
                                                    self.size = 0.8
                                                    self.opacity = 1.0
                                                }
                                            }*/
                                    }
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color(UIColor.systemBlue))
                                    .clipShape(BubbleShape())
                                }
                        }
                        .padding()
                    
                    HStack{
                        
                        Image("owl-hat")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 200)
                            .clipped()
                            .padding(.leading, -80)
                    }
                    .padding(-80)
                }
                Spacer()
                
                //buttons seleção de nível
                VStack{
                    
                    //laranja
                    ZStack {
                        CapsuleButtons(color1: Color("orangeGradient1"), color2: Color("orangeGradient2"))
                        .padding(10)
                        
                        NavigationLink(destination: PortugueseBrazilLevelView(), label: {
                            
                            ZStack{
                                Capsule()
                                    .fill(Color.white)
                                    .frame(width: 253, height: 72)
                                    .shadow(color: Color.black.opacity(0.2), radius: 1, y: 5)
                                
                                HStack{
                                    Image("flowerOrange")
                                        .resizable()
                                        .frame(width: 32.0, height: 32.0)
                                        .padding(.leading, -49)
                                    
                                    VStack{
                                        Text("Beginner")
                                            .font(.custom("Poppins-SemiBold", size: 20))
                                            .foregroundColor(.black)
                                        Text("I'm just starting")
                                            .opacity(0.5)
                                            .font(.custom("Poppins-Light", size: 15))
                                            .foregroundColor(.black)
                                    }
                                   
                                }
                            }
                        })
                        
                        
                    }
                    
                    //azul
                    ZStack {
                        
                        CapsuleButtons(color1: Color("blueGradient1"), color2: Color("blueGradient2"))
                        .padding(10)
                        
                        NavigationLink(destination: PortugueseBrazilLevelView(), label: {
                            
                            ZStack{
                                Capsule()
                                    .fill(Color.white)
                                    .frame(width: 253, height: 72)
                                    .shadow(color: Color.black.opacity(0.2), radius: 1, y: 5)
                                
                                HStack{
                                    Image("flowerBlue")
                                        .resizable()
                                        .frame(width: 32.0, height: 32.0)
                                        .padding(.leading, -40)
                                    
                                    VStack{
                                        Text("Intermediate")
                                            .font(.custom("Poppins-SemiBold", size: 20))
                                            .foregroundColor(.black)
                                        Text("I know the basics ")
                                            .opacity(0.5)
                                            .font(.custom("Poppins-Light", size: 15))
                                            .foregroundColor(.black)
                                    }
                                   
                                }
                            }
                        })
                    }
                    //rosa
                    ZStack {
                        CapsuleButtons(color1: Color("pinkGradient1"), color2: Color("pinkGradient2"))
                        .padding(10)
                        
                        Button(action: {
                           //
                        }, label: {
                            
                            ZStack{
                                Capsule()
                                    .fill(Color.white)
                                    .frame(width: 253, height: 72)
                                    .shadow(color: Color.black.opacity(0.2), radius: 1, y: 5)
                                
                                HStack{
                                    Image("flowerPink")
                                        .resizable()
                                        .frame(width: 32.0, height: 32.0)
                                        .padding(.leading, -40)
                                    
                                    VStack{
                                        Text("Proficient")
                                            .font(.custom("Poppins-SemiBold", size: 20))
                                            .foregroundColor(.black)
                                        Text("I want to improve ")
                                            .opacity(0.5)
                                            .font(.custom("Poppins-Light", size: 15))
                                            .foregroundColor(.black)
                                    }
                                   
                                }
                               
                            }
                        })
                    }
                    
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
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
        path.addCurve(to: CGPoint(x: width, y: height-15), controlPoint1: CGPoint(x: width-8, y: height), controlPoint2: CGPoint(x: width, y: height-8))
        path.addLine(to: CGPoint(x: width, y: 15))
        path.addCurve(to: CGPoint(x: width-15, y: 0), controlPoint1: CGPoint(x: width, y: 8), controlPoint2: CGPoint(x: width-8, y: 0))
        path.addLine(to: CGPoint(x: 20, y: 0))
        path.addCurve(to: CGPoint(x: 5 , y: 15), controlPoint1: CGPoint(x: 12, y: 0), controlPoint2: CGPoint(x: 5, y: 8))
        path.addLine(to: CGPoint(x: 5, y: height-10))
        path.addCurve(to: CGPoint(x: 0 , y: height), controlPoint1: CGPoint(x: 5, y: height-1), controlPoint2: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: -1, y: height))
        path.addCurve(to: CGPoint(x: 12 , y: height-4), controlPoint1: CGPoint(x: 4, y: height+1), controlPoint2: CGPoint(x: 8, y: height-1))
        path.addCurve(to: CGPoint(x: 20 , y: height), controlPoint1: CGPoint(x: 15, y: height), controlPoint2: CGPoint(x: 20, y: height))
        
        
        return Path(path.cgPath)
    }
}
