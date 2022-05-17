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
    
    //variaveis p a flag animada
    @State var isAnimating = false
    @State var image = 1
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                VStack (alignment: .leading) {
                    Text("Choose your language level")
                        .font(.custom("Poppins-Bold", size: 29))
                        .lineLimit(2)
                        .frame(width: 300)
                        .padding(.leading, -70)
                        
                    
                    Text("You are almost starting")
                            .opacity(0.5)
                            .font(.custom("Poppins-Light", size: 17))
                            .frame(alignment: .bottomTrailing)
                            .padding(.leading, -35)
                            .padding(.top, -10)
                            
                }
                
                Spacer()
                
                VStack {
                    
                    HStack{
                        
                        Image("owl-hat")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 200)
                            .clipped()
                            .padding(.leading, 70)
                            .padding()
                       
                        
                        HStack{
                            
                            
                            VStack{
                                //flag animada SP
                                /*VStack {
                                    Image("3")
                                        //.renderingMode(.template)
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .rotationEffect(Angle(degrees: isAnimating ? 200 : 0))
                                        .animation(
                                            Animation
                                                .easeInOut(duration: 7)
                                                .delay(isAnimating ? 2 : 0)
                                                .repeatForever(autoreverses: false))
                                        .scaleEffect(isAnimating ? 1 : 0)
                                        .animation(
                                            Animation
                                                .easeInOut(duration: 7)
                                                .delay(isAnimating ? 2 : 0)
                                                .repeatForever(autoreverses: true))
                                        .padding(.trailing, 50)
                                        .padding(.top, -110)
                                }.frame(width: 150, height: 150)
                                    .onAppear(){
                                        Timer.scheduledTimer(withTimeInterval: 2.4, repeats: true){_ in
                                            self.image = 1
                                        }
                                        self.isAnimating = true
                                    }*/
                                
                                //flag animada USA
                                VStack {
                                    Image("1")
                                        //.renderingMode(.template)
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .rotationEffect(Angle(degrees: isAnimating ? 500 : 0))
                                        .animation(
                                            Animation
                                                .easeInOut(duration: 16)
                                                .delay(isAnimating ? 3 : 0)
                                                .repeatForever(autoreverses: true))
                                        .scaleEffect(isAnimating ? 1 : 0)
                                        .animation(
                                            Animation
                                                .easeInOut(duration: 16)
                                                .delay(isAnimating ? 3 : 0)
                                                .repeatForever(autoreverses: true))
                                        
                                        
                                }
                                
                                
                            }
                            
                            VStack {
                                
                                
                                
                                
                                //flag animada China
                                VStack {
                                    Image("1")
                                        //.renderingMode(.template)
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .rotationEffect(Angle(degrees: isAnimating ? 400 : 0))
                                        .animation(
                                            Animation
                                                .easeInOut(duration: 6)
                                                .delay(isAnimating ? 2 : 0)
                                                .repeatForever(autoreverses: false))
                                        .scaleEffect(isAnimating ? 1 : 0)
                                        .animation(
                                            Animation
                                                .easeInOut(duration: 6)
                                                .delay(isAnimating ? 2 : 0)
                                                .repeatForever(autoreverses: true))
                                        .padding(.top, -90)
                                        .padding(.leading, -70)
                                }.frame(width: 150, height: 150)
                                    .onAppear(){
                                        Timer.scheduledTimer(withTimeInterval: 2.4, repeats: true){_ in
                                            self.image = 0
                                        }
                                        self.isAnimating = true
                                    }
                                
                            }
                            
                            
                        }
                        
                        
                        
                        
                        
                    }
                    
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

/*struct BubbleShape: Shape {
    
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
}*/
