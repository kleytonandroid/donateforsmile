//
//  HomeView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 10/03/22.
//

import SwiftUI

struct HomeView: View {
    @State var searchText: String = ""
    
    var body: some View {
        VStack {
            NavigationBarHomeView()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                
                    SearchBarView(searchText: $searchText)
                        .frame(height: 60)
                        .padding(.horizontal, 16)
                
                    HomeCategoriesView()
                    
                    VideoCoverView()
                        .padding(.top, 10)
                        .padding(.horizontal, 16)
                        
                    }
            }.frame(maxHeight: .infinity)
        }
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(searchText: "")
    }
}
