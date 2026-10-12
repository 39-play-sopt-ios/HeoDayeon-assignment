//
//  ButtonComponent.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/12/26.
//

import SwiftUI

struct NavigateButtonComponent: View {
    // let 넘어갈 뷰: String
    // let argument label name : String
    // let argunemt name: String
    // let 활성화조건함수: String
    
    var body: some View {
        NavigationLink {
            //동작
        } label: {
            Text("가입하기") // 텍스트
                .font(.system(size: 18, weight: .medium))
                .foregroundStyle(isSignUpCompleted ? .white : .gray300)
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(isSignUpCompleted ? .starbucksGreen : .gray200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .disabled(!isSignUpCompleted)
        .padding(.bottom, 47)
        
        Button {
            
        } label: {
            
        }
    }
}
