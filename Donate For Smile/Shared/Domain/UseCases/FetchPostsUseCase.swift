//
//  FetchPostsUseCase.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 15/03/22.
//

import Foundation
protocol FetchPostsUseCase {
    func execute() -> [PostDO]
}

final class DefaultFetchPostsUseCase: FetchPostsUseCase {
    func execute() -> [PostDO] {
        mockPosts
    }
}
