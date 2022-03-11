//
//  FundraiserListView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 08/02/22.
//

import SwiftUI

struct FundraiserListView: View {
    
    var filterCategory: String = ""
    
    @StateObject var viewModel = FundraiserListViewModel()
    
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
                        ForEach(viewModel.fundraisers) { fundRaiser in
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
        .navigationBarTitle(filterCategory.isEmpty ? "all_fundraiser".localizedFirstUpperCased() : filterCategory.localizedFirstUpperCased())
    }
}

struct FoundraiserListView_Previews: PreviewProvider {
    static var previews: some View {
        FundraiserListView()
    }
}
