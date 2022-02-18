//
//  ContentView.swift
//  Shared
//
//  Created by Kleyton Santos on 07/02/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var sharedData: SharedDataModel = SharedDataModel()
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            FundraiserListView()
                .tabItem {
                    Label("home".localizedFirstUpperCased(), image: "home_tab_icon")
                }.environmentObject(sharedData)
            
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
        .overlay(
            ZStack {
                // Detail Page...
                if let _ = sharedData.fundraiserFromHome, sharedData.showFundraiserDetail {
                    
                    FundriserDetailView()
                        .environmentObject(sharedData)
                        .transition(.move(edge: sharedData.showFundraiserDetail ?   .trailing : .leading))

                }
            }
        )
        .accentColor(Color(appGreenColor))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
