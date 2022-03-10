//
//  TotalDonatedView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 10/03/22.
//

import SwiftUI

struct TotalDonatedView: View {
    
    let donatedAvatars: [String]
    let totalDonated: Int
    
    var body: some View {
        HStack(spacing: 0) {
            
            ForEach(donatedAvatars, id: \.self) { avatar in
                AvatarDonatedView(avatar: avatar)
            }

            Text("\(totalDonated)+ \("donated".localized())")
                .font(.custom(customFonts, size: 12))
                .foregroundColor(Color(appGrayColor))
                .padding(.leading, donatedAvatars.isEmpty ? 0 : 14)
            
        }
    }
}

struct TotalDonatedView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDonatedView(donatedAvatars: [], totalDonated: 0)
    }
}
