//
//  CoverFundraiserDetailView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 10/03/22.
//

import SwiftUI

struct CoverFundraiserDetailView: View {
    
    let cover: String?
    let category: Category?
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(cover ?? "cover_campaign")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 178)
            
            HStack {
                Image("timer_icon")
                    .frame(width: 20, height: 20)
                    .padding(.horizontal, 8)
                
                CustomText(text: "Created 3 day ago", size: 12, fontWeight: .medium)
                    .foregroundColor(.white)
                
                Spacer()
                
                CustomText(text: category?.rawValue ?? "", size: 12)
                    .foregroundColor(.white)
                    .padding(6)
                    .background(Color(appGreenColor))
                    .cornerRadius(5)
            }.frame(maxWidth: .infinity)
        }
    }
}

struct CoverFundraiserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoverFundraiserDetailView(cover: "cover_campaign", category: .others)
    }
}
