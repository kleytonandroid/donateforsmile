//
//  HomeCategoriesView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 11/03/22.
//

import SwiftUI

struct HomeCategoriesView: View {
    
    var body: some View {
        
        VStack(spacing: 0) {
            Text("Categories".localizedFirstUpperCased())
                .font(.custom(customFonts, size: 16))
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 20)
                .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(HomeCategories.allCases, id: \.self) { category in
                        NavigationLink(destination: FundraiserListView(filterCategory: category.rawValue)) {
                            VStack {
                                Image(category.rawValue)
                                    .resizable()
                                    .frame(width: 74, height: 74)
                                
                                Text(category.rawValue.localizedFirstUpperCased())
                                    .font(.custom(customFonts, size: 12))
                                    .padding(.top, 16)
                            }
                        }.buttonStyle(PlainButtonStyle())
                    }
                }.padding(.horizontal, 16)
            }.padding(.top, 20)
        }
    }
    
    private enum HomeCategories: String, CaseIterable {
        case all_category,
             campaigns_category,
             donate_goods_category,
             charity_category
    }
}
struct HomeCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
