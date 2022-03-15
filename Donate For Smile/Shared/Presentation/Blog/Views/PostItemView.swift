//
//  PostItemView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 15/03/22.
//

import SwiftUI

struct PostItemView: View {
    
    var model: PostDO
    
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                ZStack(alignment: .topTrailing) {
                    Image(model.cover)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 130)
                        .clipped()
                        .cornerRadius(10)
                    Button {
                        // Do action for like button
                    } label: {
                        Circle()
                            .foregroundColor(.white)
                            .overlay {
                                Image("heart_icon")
                                    .frame(width: 10, height: 10, alignment: .center)
                                    .foregroundColor(Color(appGreenColor))
                            }
                    }
                    .frame(width: 20, height: 20)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 13)
                }
                
                HStack {
                    CustomText(text: model.title, size: 16)
                        .lineLimit(3)
                    
                    Spacer()
                }
                .padding(.top, 13)
                
                Text("\(model.content) \(Text("read_more".localizedFirstUpperCased()).foregroundColor(Color(appGreenColor)))")
                    .font(.custom(customFonts, size: 14))
                    .foregroundColor(Color(appGrayColor))
                    .lineLimit(3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 13)
                
                CustomText(text: model.createdAt, size: 12)
                    .foregroundColor(Color(appGrayColor))
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 13)

            }
            .padding(20)
        }
        
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(appGrayColor), lineWidth: 1).opacity(0.1)
        )
    }}

struct PostItemView_Previews: PreviewProvider {
    static var post = PostDO(id: UUID(),
                             title: "The Inspiring People Helping With Coronavirus Efforts",
                             cover: "post_cover_example",
                             content: "Six Ways to Get Help Millions of businesses across the US are …….. Read more .",
                             liked: false,
                             authorName: "Kleyton",
                             authorAvatar: "",
                             createdAt: "July 26, 2021 • 7 min read")
    static var previews: some View {
        PostItemView(model: post)
    }
}
