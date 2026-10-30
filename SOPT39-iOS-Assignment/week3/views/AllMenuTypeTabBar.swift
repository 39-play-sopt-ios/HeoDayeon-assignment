//
//  AllMenuTypeTabBar.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct AllMenuTypeTabBar: View {
    @Binding var selectedTab: MenuType
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            tabButton(title: "음료", tab: .beverage)
            tabButton(title: "푸드", tab: .food)
            tabButton(title: "상품", tab: .goods)
        }
        .padding(.leading, 28)
    }
    
    @ViewBuilder
    private func tabButton(title: String, tab: MenuType) -> some View {
        Button {
            selectedTab = tab
        } label: {
            Text(title)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(selectedTab == tab ? .black : .gray400)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 18)
    }
}
