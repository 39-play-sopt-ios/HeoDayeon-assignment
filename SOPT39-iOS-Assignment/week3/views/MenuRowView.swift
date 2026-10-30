//
//  MenuRowView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct MenuRowView: View {
    let menu: BeverageMenuModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(menu.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 0) {
                Text(menu.nameKor)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.starbucksBlack)
                    .padding(.bottom, 4)
                
                Text(menu.nameEng)
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.gray295)
                    .padding(.bottom, 10)
                
                Text("\(menu.price.formatted())원")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.starbucksBlack)
                
            }
        }
    }
}
