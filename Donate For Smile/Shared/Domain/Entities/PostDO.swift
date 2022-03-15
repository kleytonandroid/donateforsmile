//
//  PostDO.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 15/03/22.
//

import Foundation
struct PostDO: Identifiable {
    var id = UUID()
    var title: String = ""
    var cover: String = ""
    var content: String = ""
    var liked: Bool = false
    var authorName: String = ""
    var authorAvatar: String = ""
    var createdAt: String = ""
}
