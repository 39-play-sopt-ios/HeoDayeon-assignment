//
//  StarbucksTabBar.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct StarbucksTabBar: View {
    @State private var selectedTab: MainTab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                Text("Home").tag(MainTab.home)
                Text("Pay").tag(MainTab.pay)
                OrderView().tag(MainTab.order)
                Text("Gift").tag(MainTab.gift)
                Text("Other").tag(MainTab.other)
            }
            
            
            VStack(alignment: .center, spacing: 0) {
                if selectedTab == .order {
                    SelectStoreBar()
                }
                
                HStack(alignment: .center, spacing: 0) {
                    tabButton(title: "Home", image: "home_gray", tab: .home)
                    
                    Spacer()
                    
                    tabButton(title: "Pay", image: "pay_gray", tab: .pay)
                    
                    Spacer()
                    
                    tabButton(title: "Order", image: "order_gray", tab: .order)
                    
                    Spacer()
                    
                    tabButton(title: "Gift", image: "gift_gray", tab: .gift)
                    
                    Spacer()
                    
                    tabButton(title: "Other", image: "other_gray", tab: .other)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 7)
                .background(.white)
            }
        }
    }
    
    @ViewBuilder
    private func tabButton(title: String, image: String, tab: MainTab) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(alignment: .center, spacing: 0) {
                Image(image)
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 30, height: 30)
                
                Text(title)
                    .font(.system(size: 12, weight: .medium))
            }
            .foregroundStyle(selectedTab == tab ? .starbucksGreen : .gray290)
        }
    }
}

