//
//  FundraiserListViewModel.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 10/02/22.
//

import Foundation

class FundraiserListViewModel: ObservableObject {
    @Published var fundraisers: [FundraiserDO] = []

    private let fetchFundraiserUseCase: FetchFundraiserUseCase
    
    init(fetchFundraiserUseCase: FetchFundraiserUseCase = DefaultFetchFundraiserUseCase()) {
        self.fetchFundraiserUseCase = fetchFundraiserUseCase
    }
    
    func fetchFundraisers() {
        fundraisers = fetchFundraiserUseCase.execute()
    }
}
