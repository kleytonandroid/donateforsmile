//
//  NavigationBarHomeView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 11/03/22.
//

import SwiftUI

struct NavigationBarHomeView: View {
    var body: some View {
        HStack {
            Button {
             // Open Drawer...
            } label: {
                Image("drawer_icon")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
            Spacer()
            
            Image("notification_icon")
                .resizable()
                .frame(width: 24, height: 24)
                .padding(.horizontal, 10)
            
            Image("avatar_empty")
                .resizable()
                .frame(width: 35, height: 35)
        }
        .padding(.top, 30)
        .padding(.bottom, 20)
        .padding(.horizontal, 16)

    }
}

struct NavigationBarHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarHomeView()
    }
}
