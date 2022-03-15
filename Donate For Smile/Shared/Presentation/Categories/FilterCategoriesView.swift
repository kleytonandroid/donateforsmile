//
//  FilterCategoriesView.swift
//  Donate For Smile
//
//  Created by Kleyton Santos on 18/02/22.
//

import SwiftUI

struct FilterCategoriesView: View {
    
    @Binding var isPresented: Bool
    @Binding var categorySelected: String
    
    var body: some View {
        VStack(spacing: 20) {
            
            ZStack {
                Button {
                    isPresented.toggle()
                } label: {
                    Image("close_modal_icon")
                        .frame(width: 24, height: 24)
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                CustomText(text: "categories", size: 20, fontWeight: .semibold)
            }
            .padding(.vertical, 20)
            
            ScrollView(showsIndicators: false) {
                HStack {
                    CategoryItemView(categoryName: Category.education.rawValue, categorySelected: $categorySelected)
                    
                    Spacer()
                    
                    CategoryItemView(categoryName: Category.medical.rawValue, categorySelected: $categorySelected)
                    
                    Spacer()
                    
                    CategoryItemView(categoryName: Category.events.rawValue, categorySelected: $categorySelected)
                }
                .padding(.vertical, 10)
                
                HStack {
                    CategoryItemView(categoryName: Category.emergency.rawValue, categorySelected: $categorySelected)
                    
                    Spacer()
                    
                    CategoryItemView(categoryName: Category.business.rawValue, categorySelected: $categorySelected)
                    
                    Spacer()
                    
                    CategoryItemView(categoryName: Category.poverty.rawValue, categorySelected: $categorySelected)
                }
                .padding(.vertical, 10)
                
                HStack {
                    CategoryItemView(categoryName: Category.travel.rawValue, categorySelected: $categorySelected)
                    
                    Spacer()
                    
                    CategoryItemView(categoryName: Category.sports.rawValue, categorySelected: $categorySelected)
                    
                    Spacer()
                    
                    CategoryItemView(categoryName: Category.animals.rawValue, categorySelected: $categorySelected)
                }
                .padding(.vertical, 10)
                
                HStack {
                    CategoryItemView(categoryName: Category.others.rawValue, categorySelected: $categorySelected)
                    Spacer()
                }
                .padding(.vertical, 10)
                
                HStack {
                    Button {
                        categorySelected = ""
                    } label: {
                        CustomText(text: "reset_filter", size: 18)
                            .padding(.vertical, 16)
                            .padding(.horizontal, 13)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                    
                    Button {
                        isPresented.toggle()
                    } label: {
                        CustomText(text: "apply_now", size: 18)
                            .padding(.vertical, 16)
                            .padding(.horizontal, 13)
                            .background(Color(appGreenColor))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                Spacer()
            }
        }
        .padding(.horizontal, 16)
    }
}

struct FilterCategoriesView_Previews: PreviewProvider {
    @State static var isPresented = true
    @State static var text = ""
    static var previews: some View {
        FilterCategoriesView(isPresented: $isPresented, categorySelected: $text)
            .previewDevice("iPhone 8")
    }
}
