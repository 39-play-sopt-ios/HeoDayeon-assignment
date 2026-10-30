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
    
    var body: some View {
        StarbucksTabBar()
    }
}

#Preview {
    MainView()
}
