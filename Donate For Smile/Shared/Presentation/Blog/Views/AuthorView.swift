//
//  AuthorView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 23/03/22.
//

import SwiftUI

struct AuthorView: View {
    
    let avatarImageURL: String
    let authorName: String
    let dateOfPost: String
    
    
    var body: some View {
        HStack(spacing: 0) {
            // Pass Image from URL as a param
            Image(avatarImageURL)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
                .padding(.trailing, 14)
            
            VStack(alignment: .leading, spacing: 10) {
                //
                CustomText(text: authorName, islocalized: false)
                    .foregroundColor(Color(appBlackColor))
                
                CustomText(text: dateOfPost, islocalized: false)
                    .foregroundColor(Color(appGrayColor))
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct AuthorView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorView(avatarImageURL: "avatar_profile_example", authorName: "Riyad Alam", dateOfPost: "8.30 am 7th august 2021")
    }
}
