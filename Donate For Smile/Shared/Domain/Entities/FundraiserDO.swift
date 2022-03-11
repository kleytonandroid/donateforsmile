//
//  FundraiserDO.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 09/02/22.
//

import Foundation
struct FundraiserDO: Identifiable {
    var id = UUID()
    var cover: String = ""
    var title: String = ""
    var donatedAvatars: [String] = []
    var totalDonated: Int = 0
    var category: Category = .others
    var goal: Float = 0.0
    var raised: Float = 0.0
    var description: String = ""
    
    var organiser: OrganiserDO?
}
