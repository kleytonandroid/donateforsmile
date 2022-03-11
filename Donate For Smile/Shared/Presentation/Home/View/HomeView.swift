//
//  HomeView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 10/03/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
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
                        .padding(.top, 16)
                        .padding(.horizontal, 16)
                    
                    TopFundRaisersView(topFundraisers: $viewModel.topFundraisers)
                        .padding(.top, 28)
                        .padding(.horizontal, 16)
                    
                    NewCampaignListView(newFundraisers: $viewModel.newCampaigns)
                        .padding(.top, 28)
                        .padding(.horizontal, 16)
                    
                    Spacer()
                        .frame(height: 100)
                    
                }
            }.frame(maxHeight: .infinity)
        }
        .onAppear {
            viewModel.fetchTopFundraisers()
            viewModel.fetchNewCampaigns()
        }
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(searchText: "")
    }
}
