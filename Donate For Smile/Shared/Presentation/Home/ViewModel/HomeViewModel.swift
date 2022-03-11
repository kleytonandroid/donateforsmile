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

    private let fetchFundraiserUseCase: FetchFundraiserUseCase
    
    init(fetchFundraiserUseCase: FetchFundraiserUseCase = DefaultFetchFundraiserUseCase()) {
        self.fetchFundraiserUseCase = fetchFundraiserUseCase
    }
    
    func fetchTopFundraisers() {
        topFundraisers = fetchFundraiserUseCase.execute()
    }
    
    func fetchNewCampaigns() {
        newCampaigns = fetchFundraiserUseCase.execute().shuffled()
    }
}
