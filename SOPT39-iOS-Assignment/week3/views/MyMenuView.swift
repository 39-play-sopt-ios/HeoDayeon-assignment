//
//  MyMenuView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct MyMenuView: View {
    var body: some View {
        Text("등록된 나만의 메뉴가 없어요.\n즐겨 찾는 음료나 푸드를 나만의 메뉴로 등록하고\n빠르게 주문해 보세요.")
            .font(.system(size: 14, weight: .regular))
            .foregroundStyle(.gray300)
            .multilineTextAlignment(.center)
            .padding(.top, 29)
            .padding(.horizontal, 55)
    }
}
