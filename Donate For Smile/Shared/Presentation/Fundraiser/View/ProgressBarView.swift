//
//  ProgressBarView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 07/02/22.
//

import SwiftUI

struct ProgressBarView: View {
    
    var value: Float
    
    var body: some View {
        VStack {
            GeometryReader { proxy in
                ZStack(alignment: .leading) {
                    Rectangle().frame(width: proxy.size.width, height: proxy.size.height)
                        .opacity(0.3)
                        .foregroundColor(Color(appGreenColor))
                        .cornerRadius(1)

                    Rectangle().frame(width: CGFloat(value) * proxy.size.width, height: proxy.size.height)
                        .foregroundColor(Color(appGreenColor))
                        .cornerRadius(1)
                    
                }
            }
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var value: Float = 0.6
    static var previews: some View {
        ProgressBarView(value: value)
            .frame(width: .infinity, height: 4)
            .padding()
    }
}
