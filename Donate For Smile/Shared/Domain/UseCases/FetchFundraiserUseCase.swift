//
//  FetchFundraiserUseCase.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 10/02/22.
//

import Foundation

protocol FetchFundraiserUseCase {
    func execute() -> [FundraiserDO]
}

final class DefaultFetchFundraiserUseCase: FetchFundraiserUseCase {
    func execute() -> [FundraiserDO] {
        mockFundraisers
    }
    
}
