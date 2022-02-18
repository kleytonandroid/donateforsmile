//
//  SharedDataModel.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 17/02/22.
//

import Foundation

class SharedDataModel: ObservableObject {
    @Published var fundraiserFromHome: FundraiserDO?
    @Published var showFundraiserDetail: Bool
    
    public init(fundraiser: FundraiserDO? = nil, showFundraiserDetail: Bool = false) {
        self.fundraiserFromHome = fundraiser
        self.showFundraiserDetail = showFundraiserDetail
    }
}
