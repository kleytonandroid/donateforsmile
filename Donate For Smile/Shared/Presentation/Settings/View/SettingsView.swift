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
            CustomText(text: "settings", size: 20, fontWeight: .bold)
                .padding()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 30) {
                    //Notification
                    HStack {
                        Image("notification_bell_icon")
                            .frame(width: 24, height: 24)
                        
                        CustomText(text: "notification", size: 18, fontWeight: .medium)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 25)
                    
                    //Location
                    HStack {
                        Image("location_icon")
                            .frame(width: 24, height: 24)
                        
                        CustomText(text: "location", size: 18, fontWeight: .medium)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 25)
                    
                    //Security and privacy
                    HStack {
                        Image("security_privacy_icon")
                            .frame(width: 24, height: 24)
                        
                        CustomText(text: "security_and_privacy", size: 18, fontWeight: .medium)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 25)
                    
                    //App Settings
                    HStack {
                        Image("app_settings_icon")
                            .frame(width: 24, height: 24)
                        
                        CustomText(text: "app_settings", size: 18, fontWeight: .medium)
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
