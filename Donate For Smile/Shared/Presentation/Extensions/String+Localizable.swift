//
//  String+Localizable.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 15/02/22.
//

import Foundation

extension String {
    func localized() -> String {
        return NSLocalizedString(self, comment: self)
    }
    
    func localizedFirstUpperCased() -> String {
        return NSLocalizedString(self, comment: self).firstUppercased
    }
    
    func localizedFirstCapitalized() -> String {
        return NSLocalizedString(self, comment: self).capitalized
    }
}
