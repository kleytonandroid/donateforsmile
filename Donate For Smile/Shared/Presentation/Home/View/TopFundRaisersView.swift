//
//  TopFundRaisersView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 11/03/22.
//

import SwiftUI

struct TopFundRaisersView: View {
    
    @Binding var topFundraisers: [FundraiserDO]
    
    var body: some View {
        VStack {
            HStack {
                Text("top_fundraisers".localizedFirstUpperCased())
                    .font(.custom(customFonts, size: 16))
                    .fontWeight(.medium)
                
                Spacer()
                
                NavigationLink(destination: FundraiserListView()) {
                    Text("\("see_all".localizedFirstUpperCased()) ->")
                        .font(.custom(customFonts, size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(Color(appGreenColor))
                }.buttonStyle(PlainButtonStyle())
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                VStack(spacing: 0) {
                    LazyHStack() {
                        ForEach(topFundraisers) { fundRaiser in
                            NavigationLink(destination: FundraiserDetailView(model: fundRaiser)) {
                                FundraiserItem(model: fundRaiser)
                                    .frame(width: 275, height: 280)
                            }
                            .navigationBarTitleDisplayMode(.inline)
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
        }
    }
}
