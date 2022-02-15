//
//  StringProtocol+Shortcuts.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 15/02/22.
//

extension StringProtocol {
    var firstUppercased: String { prefix(1).uppercased() + dropFirst() }
}

