//
//  AvatarDonatedView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 10/03/22.
//

import SwiftUI

struct AvatarDonatedView: View {
    let avatar: String
    var body: some View {
        Image(avatar)
            .resizable()
            .frame(width: 25, height: 25)
            .overlay {
                Circle()
                    .strokeBorder(.white, lineWidth: 1)
                    .frame(width: 26, height: 26)
            }
            .padding(.trailing, -6)
    }
}


struct AvatarDonatedView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarDonatedView(avatar: "avatar_profile_example")
    }
}
