//
//  SavedListView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 11/03/22.
//

import SwiftUI

struct SavedListView: View {
    @StateObject var viewModel = SavedListViewModel()
    
    @State var searchText: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    SearchBarView(searchText: $searchText)
                        .frame(height: 60)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 22)
                    
                    LazyVStack(spacing: 20) {
                        ForEach(viewModel.savedFundraisers) { fundRaiser in
                            NavigationLink(destination: FundraiserDetailView(model: fundRaiser)) {
                                FundraiserItem(model: fundRaiser)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }.padding(.horizontal, 16)
                }
            }
        }
        .onAppear {
            viewModel.fetchFundraisers()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SavedListView_Previews: PreviewProvider {
    static var previews: some View {
        SavedListView()
    }
}
