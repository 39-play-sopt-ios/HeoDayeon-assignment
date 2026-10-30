//
//  CategoryRowView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct CategoryRowView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 21) {
            Image(imageName)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            Text(title)
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(.starbucksBlack)
        }
    }
}
