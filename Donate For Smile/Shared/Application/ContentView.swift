//
//  ContentView.swift
//  Shared
//
//  Created by Kleyton Santos on 07/02/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Label("home".localizedFirstUpperCased(), image: "home_tab_icon")
                    }
                    .padding(.top, 20)
                    .ignoresSafeArea()
                
                Text("Hello World")
                    .tabItem {
                        Label("saved".localizedFirstUpperCased(), image: "heart_tab_icon")
                    }
                
                Text("Hello World")
                    .tabItem {
                        Label("settings".localizedFirstUpperCased(), image: "settings_tab_icon")
                    }
                
                Text("Hello World")
                    .tabItem {
                        Label("profile".localizedFirstUpperCased(), image: "profile_tab_icon")
                    }
            }

        }
        .accentColor(Color(appGreenColor))
        .navigationViewStyle(.stack)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
