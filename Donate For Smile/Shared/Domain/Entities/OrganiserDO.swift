//
//  OrganiserDO.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 09/02/22.
//

import Foundation
struct OrganiserDO: Identifiable {
    var id = UUID()
    var name: String
    var location: String
    var avatarImageURL: String
}
