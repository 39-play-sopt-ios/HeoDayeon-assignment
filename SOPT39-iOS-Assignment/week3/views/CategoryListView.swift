//
//  CategoryListView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct CategoryListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 21) {
            NavigationLink(value: Category.new) {
                CategoryRowView(imageName: "menu_1", title: "NEW")
            }
            
            NavigationLink(value: Category.recommended) {
                CategoryRowView(imageName: "menu_2", title: "추천")
            }
            
            NavigationLink(value: Category.coldBrew) {
                CategoryRowView(imageName: "menu_3", title: "콜드 브루")
            }
            
            NavigationLink(value: Category.blonde) {
                CategoryRowView(imageName: "menu_3", title: "블론드")
            }
            
            NavigationLink(value: Category.espressoCoffee) {
                CategoryRowView(imageName: "menu_3", title: "에스프레소 / 커피")
            }
        }
        .padding(.leading, 28)
        .padding(.top, 26)
        .frame(alignment: .leading)
    }
}
