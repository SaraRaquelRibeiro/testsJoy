//
//  ContentView.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 21/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage ("user_state") var user_state: String = "initial"
   
    //@Binding var isNavigationBarHidden: Bool
    
    @State var selection = 0
    
    var body: some View {
                
            TabView(selection: $selection) {
                                HomeView().tabItem {
                                            if selection == 0 {
                                                Image("tabViewHome_active")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 35)
                                            } else {
                                                Image("tabViewHome")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 35)
                                            }
                                            
                                        }.tag(0)
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                                                    
                                        SubscriptionModelOne().tabItem {
                                            
                                            if selection == 1 {
                                                Image("tabViewScore_active")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 35)
                                            } else {
                                                Image("tabViewScore")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 35)
                                            }
                                        }.tag(1)
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                                        
                                SubscriptionModelTwo().tabItem {
                                    
                                            if selection == 2 {
                                                Image("tabViewProfile_active")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 35)
                                            } else {
                                                Image("tabViewProfile")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 35)
                                            }
                                        }.tag(2)
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                                        
                                FlagSelected(color: .blue, imageFlag: "1").tabItem {
                                    
                                            if selection == 3 {
                                                Image("tabViewStar_active")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 35)
                                            } else {
                                                Image("tabViewStar")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 35)
                                            }
                                            
                                        }.tag(3)
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                                
                                SubscriptionModelThree().tabItem {
                                    
                                    if selection == 4 {
                                        Image("tabViewStore_active")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    } else {
                                        Image("tabViewStore")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    }
                                    
                                }.tag(4)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                                
                }
                .onAppear() {
                    
                    UITabBar.appearance().barTintColor = .white
                    let tabBarAppearence = UITabBarAppearance()
                    tabBarAppearence.configureWithOpaqueBackground()
                    UITabBar.appearance().scrollEdgeAppearance = tabBarAppearence
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*NavigationView {
    TabView(selection: $selection) {
                        HomeView(isNavigationBarHidden: .constant(false)).tabItem {
                                    if selection == 0 {
                                        Image("tabViewHome_active")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    } else {
                                        Image("tabViewHome")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    }
                                    
                                }.tag(0)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                                            
                                SubscriptionModelOne().tabItem {
                                    
                                    if selection == 1 {
                                        Image("tabViewScore_active")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    } else {
                                        Image("tabViewScore")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    }
                                }.tag(1)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                                
                        SubscriptionModelTwo().tabItem {
                            
                                    if selection == 2 {
                                        Image("tabViewProfile_active")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    } else {
                                        Image("tabViewProfile")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    }
                                }.tag(2)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                                
                        FlagSelected(color: .blue, imageFlag: "1").tabItem {
                            
                                    if selection == 3 {
                                        Image("tabViewStar_active")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    } else {
                                        Image("tabViewStar")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35)
                                    }
                                    
                                }.tag(3)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                        
                        SubscriptionModelThree().tabItem {
                            
                            if selection == 4 {
                                Image("tabViewStore_active")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 35)
                            } else {
                                Image("tabViewStore")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 35)
                            }
                            
                        }.tag(4)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        
        }
        .onAppear() {
            
            UITabBar.appearance().barTintColor = .white
            let tabBarAppearence = UITabBarAppearance()
            tabBarAppearence.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearence
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    
}
//.navigationBarHidden(true)*/
