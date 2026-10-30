//
//  MenuListView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct MenuListView: View {
    let category: Category
    private let data = BeverageMenuData()
    @Environment(\.dismiss) private var dismiss
    
    private var menus: [BeverageMenuModel] {
        switch category {
        case .new:
            return data.beverages.filter { $0.isNew }
        case .recommended:
            return data.beverages.filter { $0.isRecommended }
        default:
            return data.beverages.filter { $0.category == category}
        }
    }
    
    private var title: String {
        switch category {
        case .new: return "NEW"
        case .recommended: return "추천"
        case .coldBrew: return "콜드 브루"
        case .blonde: return "블론드"
        case .espressoCoffee: return "에스프레소 / 커피"
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center) {
                Button {
                    dismiss()
                } label: {
                    Image("chevron_left_gray")
                        .resizable()
                        .frame(width: 21, height: 21)
                }
                
                Spacer()
                
                Image("search_gray")
                    .resizable()
                    .frame(width: 21, height: 21)
            }
            .padding(.horizontal, 21)
            .padding(.bottom, 28)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 28) {
                    Text(title)
                        .font(.system(size: 28, weight: .semibold))
                        .backgroundStyle(.white)
                        .padding(.bottom, 28)
                    
                    ForEach(menus) { menu in
                        NavigationLink(value: menu) {
                            MenuRowView(menu: menu)
                        }
                    }
                }
            }
            .padding(.horizontal, 21)
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}
