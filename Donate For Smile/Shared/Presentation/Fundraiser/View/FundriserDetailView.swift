//
//  FundriserDetailView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 08/02/22.
//

import SwiftUI

struct FundriserDetailView: View {
    
    @Binding var model: FundraiserDO?
    
    @State private var descriptionTabSelected = true
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ScrollView {
                    VStack(spacing: 0) {
                        Image(model?.cover ?? "cover_campaign")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: 178)
                        
                        Text(model?.title ?? "Help them for better education")
                            .font(.custom(customFonts, size: 20))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
                        Text("\(model?.totalDonated ?? 0)+ donated")
                            .font(.custom(customFonts, size: 12))
                            .foregroundColor(Color(appGrayColor))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                        
                        RemainingDonationView(goals: model?.goal ?? 0, raised: model?.raised ?? 0, isBiggerComponent: true)
                        
                        Divider()
                            .padding(.vertical, 20)
                        
                        
                        Text("Organizer")
                            .font(.custom(customFonts, size: 16))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(spacing: 0) {
                            Image("avatar_profile_example")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 43, height: 43)
                                .padding(.trailing, 14)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Monika Islam")
                                    .foregroundColor(Color(appBlackColor))
                                
                                Text("Dhaka Bangladesh")
                                    .foregroundColor(Color(appGrayColor))
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.custom(customFonts, size: 14))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 16)
                        
                        HStack {
                            Button {
                                descriptionTabSelected.toggle()
                            } label: {
                                Text("Description")
                                    .font(.custom(customFonts, size: 14))
                                    .foregroundColor(Color(appGreenColor))
                            }
                            
                            Spacer()
                            
                            Button {
                                descriptionTabSelected.toggle()
                            } label: {
                                Text("Comments(58)")
                                    .font(.custom(customFonts, size: 14))
                                    .foregroundColor(Color(appGrayColor))
                            }
                        }.padding(.top, 20)
                        
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci nulla sagittis proin faucibus tincidunt. Eu ac feugiat turpis dolor pretium etiam id senectus arcu. Lacus, lorem lorem tristique facilisi tincidunt......Read more")
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
                        Text("Donate Now")
                            .font(.custom(customFonts, size: 18))
                            .fontWeight(.bold)
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
    }
}

struct FundriserDetailView_Previews: PreviewProvider {
    
    @State static var model: FundraiserDO? = FundraiserDO(cover: "cover_campaign_education",
                                                          title: "Help them for education",
                                                          donatedAvatars: [],
                                                          totalDonated: 55,
                                                          category: "Education",
                                                          goal: 10000,
                                                          raised: 3300,
                                                          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit dolor sit  consectetur... ",
                                                          organiser: nil)
    
    static var previews: some View {
        FundriserDetailView(model: $model)
    }
}
