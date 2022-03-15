//
//  CustomText.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 15/03/22.
//

import SwiftUI

struct CustomText: View {
    let text: String
    var size: CGFloat = 14
    var fontWeight: Font.Weight = .regular
    var islocalized: Bool = true
    
    var body: some View {
        Text(islocalized ? text.localizedFirstUpperCased() : text)
            .font(.custom(customFonts, size: size))
            .fontWeight(fontWeight)
    }
}

struct CustomText_Previews: PreviewProvider {
    static var previews: some View {
        CustomText(text: "read_blogs")
    }
}
