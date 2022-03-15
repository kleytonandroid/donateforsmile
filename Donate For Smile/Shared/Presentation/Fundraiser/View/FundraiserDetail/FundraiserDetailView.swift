//
//  FundraiserDetailView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 08/02/22.
//

import SwiftUI

struct FundraiserDetailView: View {
    
    var model: FundraiserDO
    
    @State private var descriptionTabSelected = true
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ScrollView {
                    VStack(spacing: 0) {
                        
                        CoverFundraiserDetailView(cover: model.cover, category: model.category)
                        
                        CustomText(text: model.title, size: 20, fontWeight: .bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
                        TotalDonatedView(donatedAvatars: model.donatedAvatars,
                                         totalDonated: model.totalDonated)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
                        RemainingDonationView(goals: model.goal,raised: model.raised, isBiggerComponent: true)
                        
                        Divider()
                            .padding(.vertical, 20)
                        
                        CustomText(text: "organizer", size: 16, fontWeight: .medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(spacing: 0) {
                            Image("avatar_profile_example")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 43, height: 43)
                                .padding(.trailing, 14)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                CustomText(text: "Monika Islam", islocalized: false)
                                    .foregroundColor(Color(appBlackColor))
                                
                                CustomText(text: "Dhaka Bangladesh", islocalized: false)
                                    .foregroundColor(Color(appGrayColor))
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 16)
                        
                        HStack {
                            Button {
                                descriptionTabSelected.toggle()
                            } label: {
                                CustomText(text: "description")
                                    .foregroundColor(Color(appGreenColor))
                            }
                            
                            Spacer()
                            
                            Button {
                                descriptionTabSelected.toggle()
                            } label: {
                                CustomText(text: "\("comments".localizedFirstUpperCased()) (58)", islocalized: false)
                                    .foregroundColor(Color(appGrayColor))
                            }
                        }.padding(.top, 20)
                        
                        CustomText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci nulla sagittis proin faucibus tincidunt. Eu ac feugiat turpis dolor pretium etiam id senectus arcu. Lacus, lorem lorem tristique facilisi tincidunt......Read more", islocalized: false)
                            .font(.custom(customFonts, size: 14))
                            .foregroundColor(Color(appGrayColor))
                            .lineSpacing(8)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
                        Spacer()
                        
                    }
                }
                
                VStack(spacing: 0) {
                    Button {
                        // Do action here
                    } label: {
                        CustomText(text: "donate_now", size: 18, fontWeight: .bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                    .background(Color(appGreenColor))
                    .cornerRadius(10)
                }
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .bottom)
            }.padding(.horizontal, 16)
        }
        .navigationTitle("")
    }
}

struct FundraiserDetailView_Previews: PreviewProvider {
    
    static var model: FundraiserDO = FundraiserDO(cover: "cover_campaign_education",
                                                  title: "Help them for education",
                                                  donatedAvatars: ["avatar_profile_example",
                                                                   "avatar_profile_example",
                                                                   "avatar_profile_example",
                                                                   "avatar_profile_example"],
                                                  totalDonated: 55,
                                                  category: .education,
                                                  goal: 10000,
                                                  raised: 3300,
                                                  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit dolor sit  consectetur... ",
                                                  organiser: nil)
    
    static var previews: some View {
        FundraiserDetailView(model: model)
    }
}
