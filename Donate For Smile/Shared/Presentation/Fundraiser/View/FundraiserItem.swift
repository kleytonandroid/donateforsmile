//
//  FundraiserItem.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 07/02/22.
//

import SwiftUI

struct FundraiserItem: View {
    
    var model: FundraiserDO
    
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
                    Text(model.title)
                        .font(.custom(customFonts, size: 16))
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Text(model.category)
                        .font(.custom(customFonts, size: 12))
                        .foregroundColor(Color(appGreenColor))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(appGreenColor))
                        )
                }
                .padding(.top, 13)
                
                Text("\(model.description) \(Text("Read More").foregroundColor(Color(appGreenColor)))")
                    .font(.custom(customFonts, size: 14))
                    .foregroundColor(Color(appGrayColor))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(3)
                    .padding(.top, 13)
                
                RemainingDonationView(goals: model.goal, raised: model.raised)

            }
            .padding(20)
        }
        
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(appGrayColor), lineWidth: 1).opacity(0.1)
        )
    }
}

struct CampaignItem_Previews: PreviewProvider {
    static let model = FundraiserDO(cover: "cover_campaign",
                                    title: "Help me to overcome Debt",
                                    donatedAvatars: [],
                                    totalDonated: 55,
                                    category: "Poverty",
                                    goal: 5000,
                                    raised: 2300,
                                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit dolor sit  consectetur... ",
                                    organiser: nil)
    
    static var previews: some View {
        FundraiserItem(model: model)
            .frame(width: 340)
    }
}
