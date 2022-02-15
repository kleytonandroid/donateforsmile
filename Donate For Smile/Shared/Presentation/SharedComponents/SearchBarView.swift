//
//  SearchBarView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 08/02/22.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    var body: some View {
        
        VStack {
            HStack {
                Image("magnifying_glass_icon")
                    .frame(width: 20, height: 20)
                
                TextField("search_here".localizedFirstUpperCased(), text: $searchText)
                    .font(.custom(customFonts, size: 16))
                
                Button {
                    // Do the microfone action here
                } label: {
                    Image("microphone_icon")
                        .frame(width: 24, height: 24)
                }
                
                Divider()
                    .padding(.vertical, 13)
                
                Button {
                    // Do the filter action here
                } label: {
                    Image("filter_search_icon")
                        .foregroundColor(Color(appGreenColor))
                        .frame(width: 24, height: 24)
                }
            }
            .padding(.horizontal, 13)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(appGrayBorderColor), lineWidth: 1)
                    .opacity(0.3)
            )
        }.frame(maxWidth: .infinity, maxHeight: 60)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    @State static var text = ""
    static var previews: some View {
        SearchBarView(searchText: $text)
            .padding()
    }
}
