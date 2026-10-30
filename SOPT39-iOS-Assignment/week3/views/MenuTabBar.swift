//
//  MenuTabBar.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct MenuTabBar: View {
    @Binding var selectedTab: Menu
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            tabButton(title: "전체 메뉴", tab: .allMenu)
            
            tabButton(title: "나만의 메뉴", tab: .myMenu)
        }
        .padding(.top, 14)
    }
    
    private func tabButton(title: String, tab: Menu) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(alignment: .center, spacing: 12) {
                Text(title)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(selectedTab == tab ? .starbucksGreen : .gray300)
                
                Rectangle()
                    .frame(width: 130, height: 2)
                    .foregroundStyle(selectedTab == tab ? .starbucksGreen : .white)
            }
        }
    }
}
