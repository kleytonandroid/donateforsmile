//
//  HomeView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 10/03/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var sharedData: SharedDataModel = SharedDataModel()
    @State private var willMoveToFundraiserList = false
    @State var searchText: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                 // Open Drawer...
                } label: {
                    Image("drawer_icon")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                
                Spacer()
                
                Image("notification_icon")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(.horizontal, 10)
                
                Image("avatar_empty")
                    .resizable()
                    .frame(width: 35, height: 35)
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 16)
            
            SearchBarView(searchText: $searchText)
                .padding(.horizontal, 16)
            
            HomeCategoriesView()
            
            Spacer()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(searchText: "")
    }
}
