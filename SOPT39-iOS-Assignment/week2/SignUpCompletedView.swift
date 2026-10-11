//
//  SignUpCompletedView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/12/26.
//

import SwiftUI

struct SignUpCompletedView: View {
    let name: String
    
    var body: some View {
        VStack (alignment: .center, spacing: 0) {
            
            Image(.logoStarbucks)
                .resizable()
                .scaledToFill()
                .frame(width: 261.16, height: 200.52)
                .padding(.top, 112)
            
            Group{
                Text("\(name)님")
                    .padding(.top, 93.48)
                Text("가입을 환영합니다!")
                
            }
            .font(.system(size: 23, weight: .semibold))
            .foregroundStyle(.white)
            
            Spacer()
            
            Button {
                // 메인으로
            } label: {
                Text("메인으로")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundStyle(.darkGreen)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 22)
            .padding(.bottom, 47)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.darkGreen)
        .navigationBarBackButtonHidden()
    }
}
