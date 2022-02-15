//
//  FundraiserDO.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 09/02/22.
//

import Foundation
struct FundraiserDO: Identifiable {
    var id = UUID()
    var cover: String
    var title: String
    var donatedAvatars: [String]
    var totalDonated: Int
    var category: Category
    var goal: Float
    var raised: Float
    var description: String
    
    var organiser: OrganiserDO?
}
