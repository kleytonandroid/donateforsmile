//
//  FundraiserListView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 08/02/22.
//

import SwiftUI

struct FundraiserListView: View {
    
    @StateObject var viewModel = FundraiserListViewModel()
    
    @State var fundraiserSelected: FundraiserDO?
    
    @State var searchText: String = ""
    @State var presentFundraiserDetail = false
    
    var body: some View {
        NavigationView {
                    VStack {
                        ScrollView(showsIndicators: false) {
                            VStack(spacing: 0) {
                                SearchBarView(searchText: $searchText)
                                    .frame(height: 60)
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 22)
                                NavigationLink(destination: FundriserDetailView(model: $fundraiserSelected),
                                               isActive: $presentFundraiserDetail) {
                                    EmptyView()
                                }
                                
                                LazyVStack(spacing: 20) {
                                    ForEach(viewModel.fundraisers) { fundRaiser in

                                        FundraiserItem(model: fundRaiser)
                                            .onTapGesture {
                                                fundraiserSelected = fundRaiser
                                                presentFundraiserDetail.toggle()
                                            }
                                        
                                    }
                                }.padding(.horizontal, 16)
                            }
                        }
                    }
        }
        .navigationTitle("Fundraiser")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            viewModel.fetchFundraisers()
        }
    }
}

struct FoundraiserListView_Previews: PreviewProvider {
    static var previews: some View {
        FundraiserListView()
    }
}
