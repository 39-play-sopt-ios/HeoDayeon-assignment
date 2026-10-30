//
//  SelectStoreBar.swift
//  S/Users/dayeon/Documents/play_sopt/SOPT39-iOS-Assignment/SOPT39-iOS-Assignment/week3/dataOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct SelectStoreBar: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 0) {
                HStack(alignment: .center, spacing: 0) {
                    Text("성수역")
                        .font(.system(size: 13, weight: .medium))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Image("chevron_bottom_white")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                
                Divider()
                    .frame(maxWidth: .infinity)
                    .overlay(.gray700)
            }
            .frame(width: 239)
            .padding(.leading, 14)
            .padding(.vertical, 13.5)
            
            Spacer()
            
            Image("buy_empty")
                .resizable()
                .frame(width: 42, height: 42)
                .padding(.trailing, 14)
                .padding(.vertical, 6)
        }
        .background(.darkBrown)
    }
}
