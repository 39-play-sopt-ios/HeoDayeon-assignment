//
//  MenuDetailView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

import SwiftUI

struct MenuDetailView: View {
    let menu: BeverageMenuModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                ZStack(alignment: .top) {
                    Image(menu.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 333)
                        .frame(maxWidth: .infinity)
                        .clipped()
                    
                    HStack(alignment: .top, spacing: 0) {
                        Button {
                            dismiss()
                        } label: {
                            Image("chevron_left_white")
                                .resizable()
                                .frame(width: 21, height: 21)
                                .frame(width: 39, height: 39)
                                .background(.black.opacity(0.2))
                                .clipShape(Circle())
                        }
                        
                        Spacer()
                        
                        Image("share_white")
                            .resizable()
                            .frame(width: 16, height: 17)
                            .frame(width: 34, height: 35)
                            .background(.black.opacity(0.2))
                            .clipShape(Circle())
                    }
                    .padding(.top, 55)
                    .padding(.horizontal, 21)
                }
                
                VStack(alignment: .center, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack(alignment: .center, spacing: 9) {
                            Text(menu.nameKor)
                                .font(.system(size: 23, weight: .semibold))
                                .foregroundStyle(.starbucksBlack)
                            
                            if menu.isNew == true {
                                Text("NEW")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundStyle(.mainGreen)
                            }
                        }
                        .padding(.top, 21)
                        
                        Text(menu.nameEng)
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.gray295)
                            .padding(.bottom, 14)
                        
                        Text(menu.description)
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(.starbucksBlack)
                            .padding(.bottom, 28)
                        
                        Text("\(menu.price.formatted())원")
                            .font(.system(size: 23, weight: .semibold))
                            .foregroundStyle(.black)
                    }
                    .padding(.bottom, 32)
                    
                    Group {
                        if menu.isIceOnly == true {
                            Text("ICED ONLY")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundStyle(.mainBlue)
                                .padding(.vertical, 9)
                                .frame(maxWidth: .infinity)
                                .overlay(RoundedRectangle(cornerRadius: 26).stroke(.gray210))
                        }
                        // TODO: 실제 스벅 앱처럼 HOT - ICED 토글 구현해보고 싶다 !! ㅠ
                    }
                    .padding(.bottom, 14)
                    
                    if let alert = menu.alert {
                        Text(alert)
                            .font(.system(size: 14, weight: .regular))
                            .padding(.vertical, 21)
                            .padding(.horizontal, 14)
                            .foregroundStyle(.gray400)
                            .frame(maxWidth: .infinity)
                            .background(.gray100)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 21)
            }
            .ignoresSafeArea(edges: .top)
            .toolbar(.hidden, for: .navigationBar)
            
            HStack(alignment: .center, spacing: 20) {
                Image("favAdd_filled")
                    .resizable()
                    .frame(width: 26, height: 26)
                
                Text("주문하기")
                    .padding(.vertical, 12)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(.starbucksGreen)
                    .clipShape(RoundedRectangle(cornerRadius: 26))
            }
            .padding(.top, 14)
            .padding(.bottom, 32)
            .padding(.horizontal, 21)
            .background(.white)
            .shadow(color: .black.opacity(0.1), radius: 13, x: 0, y: -2)
        }
    }
}

#Preview {
    MenuDetailView(menu: BeverageMenuData().beverages[0])
}
