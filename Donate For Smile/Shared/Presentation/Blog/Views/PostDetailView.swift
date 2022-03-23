//
//  PostDetailView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 23/03/22.
//

import SwiftUI

struct PostDetailView: View {
    
    let model: PostDO
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                CustomText(text: model.title,
                           size: 16,
                           fontWeight: .medium)
                    .lineSpacing(10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 24)
                
                AuthorView(avatarImageURL: model.authorAvatar, authorName: model.authorName, dateOfPost: model.createdAt)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 20)
                
                Image(model.cover)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 178)
                    .cornerRadius(10)
                    .padding(.top, 20)
                
                CustomText(text: model.content)
                    .foregroundColor(Color(appGrayColor))
                    .lineSpacing(8)
                    .padding(.vertical, 20)
                Spacer()
            }.padding(.horizontal, 16)
        }
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(model: PostDO(title: "The Inspiring People Helping With Coronavirus Efforts", cover: "cover_campaign", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis lorem integer amet at. Aliquet nulla elit blandit urna natoque sed. Ac vestibulum nibh accumsan, lorem dis non suspendisse blandit condimentum. Vulputate pharetra sit amet elementum. Tincidunt id facilisis felis pellentesque. Scelerisque augue lacinia maecenas lacus sed dignissim et. In non pellentesque et euismod. Sagittis sed elit sagittis orci porta porttitor et morbi sed. Facilisi sodales purus, consectetur magna viverra sagittis amet. Vulputate neque, at pulvinar bibendum. Adipiscing sit rutrum nunc dictum suspendisse risus. Urna, vitae neque imperdiet accumsan lacinia tempor sagittis, sapien. Dui velit nec fames urna quam amet sit.", liked: false, authorName: "Riyad Alam", authorAvatar: "avatar_profile_example", createdAt: "8.30 am 7th august 2021"))
    }
}
