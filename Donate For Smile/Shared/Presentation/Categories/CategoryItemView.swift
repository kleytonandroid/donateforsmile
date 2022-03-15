//
//  CategoryItemView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 23/02/22.
//

import SwiftUI

struct CategoryItemView: View {
    
    var categoryName: String
    
    @Binding var categorySelected: String
    
    var body: some View {
        VStack {
            Image(categoryName)
                .frame(width: 24, height: 24)
                .foregroundColor(categoryName == categorySelected ? .white : Color(appGreenColor))
                .padding(.top, 20)
            
            CustomText(text: categoryName, size: 16)
                .padding(.vertical, 20)
                .foregroundColor(categoryName == categorySelected ? .white : .black)
            
        }
        .frame(width: 100, height: 100)
        .background {
            categoryName == categorySelected ? Color(appGreenColor) : .white
        }
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(appGrayColor), lineWidth: 1).opacity(0.1)
        )
        .onTapGesture {
            if categorySelected == categoryName {
                categorySelected = ""
            } else {
                categorySelected = categoryName
            }
        }
    }
}
