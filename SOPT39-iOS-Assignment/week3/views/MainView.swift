//
//  MainView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

enum MainTab: Hashable {
    case home
    case pay
    case order
    case gift
    case other
}

struct MainView: View {
    @State private var selectedTab: MainTab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                Text("Home").tag(MainTab.home)
                
                Text("Pay").tag(MainTab.pay)
                
                Text("Order").tag(MainTab.order)
                
                Text("Gift").tag(MainTab.gift)
                
                Text("Other").tag(MainTab.other)
            }
            
            StarbucksTabBar(selectedTab: $selectedTab)
        }
    }
}

#Preview {
    MainView()
}
