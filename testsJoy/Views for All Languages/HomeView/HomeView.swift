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
                NavigationView{
               
                VStack {
                    VStack {
                        TopRowBtns(logo: "owlLogo", languageFlag: "1")
                            .padding(.top, -10)
                        
                        VStack() {
                                HStack{
                                    
                                    //Challenges(challenge: dailyChallenge1)
                                }
                                .padding(.leading)
                        }
                        //.edgesIgnoringSafeArea(.all)
                        //.zIndex(-1)
                        .padding(.top, 40)
                    }
                        
                    
                        List{
                            ForEach(vm.units, id:\.id){ uni in
                                CategoryRow(unit: uni)
                                //remover linha separator
                                    .listRowSeparator(.hidden)
                                    
                            }
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                        
                        .navigationBarHidden(true)
                        .navigationBarTitle("")
                        .background(Color.white.ignoresSafeArea())
                        .onAppear {
                            // Set the default to clear
                            UITableView.appearance().backgroundColor = .clear
                        }
                        //.colorScheme(.light)
                        
                        
                    }
                    .padding(.leading, -14)
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
                    .shadow(color: Color.black.opacity(0.12), radius: 0.7, y: 2)
                
                
                HStack {
                    Image("coin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18)
                        .padding(.leading, -10)
                    //aqui colocar os diamonds que o user vai ganhar à medida q for finalizando os jogos
                    Text("45.0")
                        .font(.custom("Poppins-semibold", size: 14))
                        .opacity(0.4)
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
            ZStack{
                Capsule()
                    .fill(Color.white)
                    .frame(width: 80, height: 28)
                    .shadow(color: Color.black.opacity(0.12), radius: 0.7, y: 2)
                
                HStack {
                    Image("heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16)
                        .padding(.leading, -10)
                    //aqui colocar as vidas que o user vai ganhar à medida q for finalizando os jogos
                    Text("100")
                        .font(.custom("Poppins-semibold", size: 14))
                        .opacity(0.4)
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
