//
//  ProfileView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 11/03/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            CustomText(text: "profile", size: 20, fontWeight: .bold)
                .padding()
            
            ScrollView(showsIndicators: false) {
                VStack {
                    Image("avatar_profile_big_example")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .padding(.top, 16)
                    
                    CustomText(text: "Lis Haque", size: 20, fontWeight: .medium)
                        .foregroundColor(Color(appGrayColor))
                        .padding(.top, 16)
                    
                    HStack(spacing: 20) {
                        VStack {
                            CustomText(text: "2", size: 18)
                            
                            CustomText(text: "campaigns", size: 14)
                                .padding(.top, 2)
                        }
                        .foregroundColor(.white)
                        .frame(width: 93, height: 73)
                        .background(Color(appGreenColor))
                        .cornerRadius(10)
                        
                        VStack {
                            CustomText(text: "$300", size: 18)
                            
                            CustomText(text: "donated", size: 14)
                                .padding(.top, 2)
                        }
                        .foregroundColor(.white)
                        .frame(width: 93, height: 73)
                        .background(Color(appGreenColor))
                        .cornerRadius(10)
                        
                        VStack {
                            CustomText(text: "$50", size: 18)
                            
                            CustomText(text: "generated", size: 14)
                                .padding(.top, 2)
                        }
                        .foregroundColor(.white)
                        .frame(width: 93, height: 73)
                        .background(Color(appGreenColor))
                        .cornerRadius(10)
                    }
                    .padding(.top, 40)
                    
                    
                    VStack(spacing: 30) {
                        //Notification
                        HStack {
                            Image("edit_profile_icon")
                                .frame(width: 24, height: 24)
                            
                            CustomText(text: "edit_profile", size: 18, fontWeight: .medium)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                        
                        //Notification
                        HStack {
                            Image("my_campaign_icon")
                                .frame(width: 24, height: 24)
                            
                            CustomText(text: "my_campaign", size: 18, fontWeight: .medium)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                        
                        //Notification
                        HStack {
                            Image("history_icon")
                                .frame(width: 24, height: 24)
                            
                            CustomText(text: "history", size: 18, fontWeight: .medium)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                        
                        //Notification
                        HStack {
                            Image("achievements_icon")
                                .frame(width: 24, height: 24)
                            
                            CustomText(text: "achievements", size: 18, fontWeight: .medium)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                    }
                    .padding(26)
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
