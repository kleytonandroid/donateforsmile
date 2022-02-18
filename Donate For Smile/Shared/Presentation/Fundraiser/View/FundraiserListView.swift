//
//  FundraiserListView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 08/02/22.
//

import SwiftUI

struct FundraiserListView: View {
    
    @StateObject var viewModel = FundraiserListViewModel()
    
    @EnvironmentObject var sharedData: SharedDataModel
    
    @State var searchText: String = ""
    
    var body: some View {
        VStack {
            ZStack {
                Button {
                 // Closing View...
                } label: {
                    Image("arrow_right")
                        .frame(width: 24, height: 24)
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                Text("All Fundraisers")
                    .font(.custom(customFonts, size: 20))
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    SearchBarView(searchText: $searchText)
                        .frame(height: 60)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 22)
                    
                    LazyVStack(spacing: 20) {
                        ForEach(viewModel.fundraisers) { fundRaiser in
                            
                            FundraiserItem(model: fundRaiser)
                                .onTapGesture {
                                    withAnimation(.easeInOut) {
                                        sharedData.fundraiserFromHome = fundRaiser
                                        sharedData.showFundraiserDetail.toggle()
                                    }
                                }
                            
                        }
                    }.padding(.horizontal, 16)
                }
            }
        }
        .onAppear {
            viewModel.fetchFundraisers()
        }
    }
}

struct FoundraiserListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
