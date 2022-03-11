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
            Text("profile".localizedFirstUpperCased())
                .font(.custom(customFonts, size: 20))
                .bold()
                .padding()
            
            ScrollView(showsIndicators: false) {
                VStack {
                    Image("avatar_profile_big_example")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .padding(.top, 16)
                    
                    Text("Lis Haque")
                        .font(.custom(customFonts, size: 20))
                        .foregroundColor(Color(appGrayColor))
                        .fontWeight(.medium)
                        .padding(.top, 16)
                    
                    HStack(spacing: 20) {
                        VStack {
                            Text("2")
                                .font(.custom(customFonts, size: 18))
                            
                            Text("campaigns".localizedFirstUpperCased())
                                .font(.custom(customFonts, size: 14))
                                .padding(.top, 2)
                        }
                        .foregroundColor(.white)
                        .frame(width: 93, height: 73)
                        .background(Color(appGreenColor))
                        .cornerRadius(10)
                        
                        VStack {
                            Text("$300")
                                .font(.custom(customFonts, size: 18))
                            
                            Text("donated".localizedFirstUpperCased())
                                .font(.custom(customFonts, size: 14))
                                .padding(.top, 2)
                        }
                        .foregroundColor(.white)
                        .frame(width: 93, height: 73)
                        .background(Color(appGreenColor))
                        .cornerRadius(10)
                        
                        VStack {
                            Text("$50")
                                .font(.custom(customFonts, size: 18))
                            
                            Text("generated".localizedFirstUpperCased())
                                .font(.custom(customFonts, size: 14))
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
                            Text("edit_profile".localizedFirstUpperCased())
                                .font(.custom(customFonts, size: 18))
                                .fontWeight(.medium)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                        
                        //Notification
                        HStack {
                            Image("my_campaign_icon")
                                .frame(width: 24, height: 24)
                            Text("my_campaign".localizedFirstUpperCased())
                                .font(.custom(customFonts, size: 18))
                                .fontWeight(.medium)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                        
                        //Notification
                        HStack {
                            Image("history_icon")
                                .frame(width: 24, height: 24)
                            Text("history".localizedFirstUpperCased())
                                .font(.custom(customFonts, size: 18))
                                .fontWeight(.medium)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                        
                        //Notification
                        HStack {
                            Image("achievements_icon")
                                .frame(width: 24, height: 24)
                            Text("achievements".localizedFirstUpperCased())
                                .font(.custom(customFonts, size: 18))
                                .fontWeight(.medium)
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
