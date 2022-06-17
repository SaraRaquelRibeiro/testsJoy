//
//  HomeViewAmerican.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/05/2022.
//

import SwiftUI

struct HomeView: View {
    
    let defaults = UserDefaults.standard
    
    @StateObject var vm = HomeVM()
    
    
    let screen = UIScreen.main.bounds
    
    
    @AppStorage ("user_state") var user_state: String = "initial"
    
    @State private var isShowingRectangle = true
    
    
    //@Binding var isNavigationBarHidden: Bool
    
    @State var selection = 0
    
   
    
    var body: some View {
            ZStack{
                
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    ZStack{
                        
                        //menu do topo
                        topRowButtons()
                            .padding(.top, 115)
                        
                        TopImageHomeView()
                            .edgesIgnoringSafeArea(.all)
                            .zIndex(-1)
                        
                        /*TopImageHomeView()
                            .frame(width: screen.width)
                            .padding(.top, -140)
                            .padding(.bottom, 60)
                            .zIndex(-1)*/
                        
                        
                        VStack() {
                            Spacer()
                            DailyChallengesCell(dailyChallenge: dailyChallenge1)
                            Spacer()
                            DailyChallengesCell(dailyChallenge: dailyChallenge2)
                            Spacer()
                        }
                        .padding(.leading, -100)
                        
                    }
                    
                    NavigationView{
                        
                        List{
                            ForEach(vm.units){ uni in
                                CategoryRow(unit: uni)
                            }
                            
                        }
                        .navigationBarHidden(true)
                        .navigationBarTitle("")
                        
                    }
                    
                    
                    
                    /*ScrollView (showsIndicators: false) {
                        LazyVStack {
                            
                            Spacer()
                                .frame(height: 20)
                            
                            //inserir as units
                            ForEach(vm.units){ uni in
                                
                                CategoryRow(unit: uni)
                                
                                HStack {
                                        Text(uni)
                                                .font(.custom("Poppins-SemiBold", size: 21))
                                                            .opacity(0.8)
                                                            .foregroundColor(.black)
                                                            .padding(.leading)
                                                        
                                    
                                    
                                            if(uni == "Unit 1") {
                                                HStack{
                                                    Image("awardUnit1")
                                                        .resizable()
                                                        .frame(width: 30, height: 30)
                                                        
                                                    Text("100 popular words")
                                                        .font(.custom("Poppins-regular", size: 16))
                                                        .opacity(0.8)
                                                        .foregroundColor(.black)
                                                }
                                            } else if(uni == "Unit 2"){
                                                
                                                HStack{
                                                    Image(systemName: "circle.fill")
                                                        .foregroundColor(.pink)
                                                        .font(.system(size: 6))
                                                    
                                                    Text("100 popular words to travel")
                                                        .font(.custom("Poppins-regular", size: 16))
                                                        .opacity(0.8)
                                                        .foregroundColor(.black)
                                                }
                                            } else if(uni == "Unit 3"){
                                                
                                                HStack{
                                                    Image("awardUnit2")
                                                        .resizable()
                                                        .frame(width: 30, height: 30)
                                                    
                                                    Text("100 popular words to travel")
                                                        .font(.custom("Poppins-regular", size: 16))
                                                        .opacity(0.8)
                                                        .foregroundColor(.black)
                                                }
                                            }
                                  
                                                
                                    Spacer()
                                            
                                        /
                                        //.padding(.bottom, -7)
                              
                                                //scrollview p os cursos
                                                //ScrollView(.horizontal, showsIndicators: false) {
                                                NavigationView {
                                                    //LazyHStack {
                                                    List{
                                                        //ForEach(vm.getCourse(forUnit: uni)) { course in
                                                            VStack {
                                                                
                                                                
                                                                Button(action: {
                                                                    
                                                                    isShowingRectangle.toggle()
                                                                }, label: {
                                                                    ZStack{
                                                                        StandardHomeCourse(course: course)
                                                                                .frame(width: 90, height: 110)
                                                                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                                                                .shadow(color: Color.black.opacity(0.2), radius: 5, y: 5)
                                                                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                                                                .shadow(color: Color.black.opacity(0.2), radius: 5, y: 5)
                                                                                //meter a linha colorida
                                                                                .overlay(
                                                                                    RoundedRectangle(cornerRadius: 20)
                                                                                        .stroke(lineWidth: 5.0)
                                                                                        .foregroundColor(Color("\(course.color)")))
                                                                            //para afastar um bocado os circulos
                                                                            .padding(.trailing, 14)
                                                                        
                                                                        if isShowingRectangle{
                                                                            
                                                                             GrayRectangle()
                                                                                .padding(.leading, -13)
                                                                        }
                                                                    }
                                                                })
                                                                Text(course.name)
                                                                    .opacity(0.6)
                                                                    .font(.custom("Poppins-medium", size: 11))
                                                                    .foregroundColor(.black)
                                                                    .padding(.leading, -13)
                                                            }
                                                        //}
                                                    }
                                                    .padding(.top, 10)
                                                    .padding(.bottom, 30)
                                                    .padding(.horizontal, 10)
                                                }
                                                
                                }
                                .padding(.horizontal, 10)
                            }
                    }*/
                }
            }
            .foregroundColor(.white)
        }
    }


struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView()
            
        //HomeView(isNavigationBarHidden: .constant(false))
    }
}

struct topRowButtons : View {
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                //
            }, label: {
                Image("owlLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
            })
                .buttonStyle(PlainButtonStyle())
            
                
            Spacer()
            ZStack{
                Capsule()
                    .fill(Color.white)
                    .frame(width: 80, height: 28)
                    .shadow(color: Color.black.opacity(0.06), radius: 0.7, y: 2)
                
                HStack {
                    Image("coin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18)
                        .padding(.leading, -10)
                    //aqui colocar os diamonds que o user vai ganhar à medida q for finalizando os jogos
                    Text("45.0")
                        .font(.custom("Poppins-medium", size: 13))
                        .opacity(0.5)
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
            ZStack{
                Capsule()
                    .fill(Color.white)
                    .frame(width: 80, height: 28)
                    .shadow(color: Color.black.opacity(0.06), radius: 0.7, y: 2)
                
                HStack {
                    Image("heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16)
                        .padding(.leading, -10)
                    //aqui colocar as vidas que o user vai ganhar à medida q for finalizando os jogos
                    Text("100")
                        .font(.custom("Poppins-medium", size: 13))
                        .opacity(0.5)
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
           
            
            FlagSelected(color: .blue, imageFlag: "1")
                
        }
        //.background(Color.red)
        .padding(.leading, 25)
        .padding(.trailing, 25)
        .padding(.top, -260)
        
    }
}
