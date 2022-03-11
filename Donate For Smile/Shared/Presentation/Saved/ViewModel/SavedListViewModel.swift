//
//  SavedListViewModel.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 11/03/22.
//

import Foundation

class SavedListViewModel: ObservableObject {
    @Published var savedFundraisers: [FundraiserDO] = []

    //Temp, should change to get the saved fundraisers
    private let fetchFundraiserUseCase: FetchFundraiserUseCase
    
    init(fetchFundraiserUseCase: FetchFundraiserUseCase = DefaultFetchFundraiserUseCase()) {
        self.fetchFundraiserUseCase = fetchFundraiserUseCase
    }
    
    func fetchFundraisers() {
        savedFundraisers = fetchFundraiserUseCase.execute().shuffled()
    }
}
