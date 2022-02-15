//
//  RemainingDonationView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 08/02/22.
//

import SwiftUI

struct RemainingDonationView: View {
    
    var goals: Float
    var raised: Float
    
    var isBiggerComponent = false
    
    var body: some View {
        VStack(spacing: 0) {
            ProgressBarView(value: raised/goals)
                .frame(maxWidth: .infinity, maxHeight: isBiggerComponent ? 8 : 4)
                .padding(.top, isBiggerComponent ? 20 : 13)
            
            HStack {
                Text("Goals: $\(goals, specifier: "%.0f")")
                    .font(.custom(customFonts, size: isBiggerComponent ? 16 : 14))
                
                Spacer()
                
                Text("Raised of $\(raised, specifier: "%.0f")(\(raised/goals*100, specifier: "%.0f"))%")
                    .font(.custom(customFonts, size: isBiggerComponent ? 14 : 12))
                    .foregroundColor(Color(appGreenColor))
            }.padding(.top, isBiggerComponent ? 20 : 13)
        }
    }
}

struct RemainingDonationView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            RemainingDonationView(goals: 5000, raised: 4350).padding()
            RemainingDonationView(goals: 5000, raised: 4350, isBiggerComponent: true).padding()
        }
    }
}
