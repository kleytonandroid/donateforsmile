//
//  HomeViewModel.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 11/03/22.
//

import Foundation
class HomeViewModel: ObservableObject {
    
    @Published var topFundraisers: [FundraiserDO] = []
    @Published var newCampaigns: [FundraiserDO] = []
    @Published var posts: [PostDO] = []

    private let fetchFundraiserUseCase: FetchFundraiserUseCase
    private let fetchPostsUseCase: FetchPostsUseCase
    
    init(fetchFundraiserUseCase: FetchFundraiserUseCase = DefaultFetchFundraiserUseCase(),
         fetchPostsUseCase: FetchPostsUseCase = DefaultFetchPostsUseCase()) {
        self.fetchFundraiserUseCase = fetchFundraiserUseCase
        self.fetchPostsUseCase = fetchPostsUseCase
    }
    
    func fetchTopFundraisers() {
        topFundraisers = fetchFundraiserUseCase.execute()
    }
    
    func fetchNewCampaigns() {
        newCampaigns = fetchFundraiserUseCase.execute().shuffled()
    }
    
    func fetchPosts() {
        posts = fetchPostsUseCase.execute()
    }
}
