//
//  SettingsView.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 11/03/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Text("settings".localizedFirstUpperCased())
                .font(.custom(customFonts, size: 20))
                .bold()
                .padding()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 30) {
                    //Notification
                    HStack {
                        Image("notification_bell_icon")
                            .frame(width: 24, height: 24)
                        Text("notification".localizedFirstUpperCased())
                            .font(.custom(customFonts, size: 18))
                            .fontWeight(.medium)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 25)
                    
                    //Location
                    HStack {
                        Image("location_icon")
                            .frame(width: 24, height: 24)
                        
                        Text("location".localizedFirstUpperCased())
                            .font(.custom(customFonts, size: 18))
                            .fontWeight(.medium)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 25)
                    
                    //Security and privacy
                    HStack {
                        Image("security_privacy_icon")
                            .frame(width: 24, height: 24)
                        Text("security_and_privacy".localizedFirstUpperCased())
                            .font(.custom(customFonts, size: 18))
                            .fontWeight(.medium)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 25)
                    
                    //App Settings
                    HStack {
                        Image("app_settings_icon")
                            .frame(width: 24, height: 24)
                        Text("app_settings".localizedFirstUpperCased())
                            .font(.custom(customFonts, size: 18))
                            .fontWeight(.medium)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 25)
                }
                .padding(.top, 56)
                .padding(26)
            }.navigationBarHidden(true)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
