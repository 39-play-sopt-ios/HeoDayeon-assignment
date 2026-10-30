//
//  OrderView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

enum Menu {
    case allMenu
    case myMenu
}

enum MenuType {
    case beverage
    case food
    case goods
}

struct OrderView: View {
    @State private var selectedMenu: Menu = .allMenu
    @State private var selectedType: MenuType = .beverage
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center) {
                Spacer()
                
                Image("search_gray")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .padding(.trailing, 21)
            }
            .frame(height: 49)
            
            Text("Order")
                .padding(.leading, 18)
                .padding(.vertical, 14)
                .font(.system(size: 28, weight: .semibold))
                .backgroundStyle(.white)
            
            MenuTabBar(selectedTab: $selectedMenu)
            
            Divider()
                .overlay(.gray150)
            
            switch selectedMenu {
            case .allMenu:
                AllMenuTypeTabBar(selectedTab: $selectedType)
                
            case .myMenu:
                Text("my menu")
            }
            
            Divider()
                .overlay(.gray150)
            
            Spacer()
        }
        
    }
}
