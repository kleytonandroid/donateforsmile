//
//  ReadBlogsView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 15/03/22.
//

import SwiftUI

struct ReadBlogsView: View {
    @Binding var posts: [PostDO]
    
    var body: some View {
        VStack {
            HStack {
                CustomText(text: "read_blogs", size: 16, fontWeight: .medium)
                
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
                        ForEach(posts) { post in
                            PostItemView(model: post)
                                .frame(width: 275, height: 280)
                        }
                    }
                }
            }
        }
    }

}
