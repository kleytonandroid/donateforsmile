//
//  PostListViewModel.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 23/03/22.
//

import Foundation

class PostListViewModel: ObservableObject {
    
    @Published var posts: [PostDO] = []

    private let fetchPostsUseCase: FetchPostsUseCase
    
    init(fetchPostsUseCase: FetchPostsUseCase = DefaultFetchPostsUseCase()) {
        self.fetchPostsUseCase = fetchPostsUseCase
    }
    
    func fetchPosts() {
        posts = fetchPostsUseCase.execute()
    }
}
