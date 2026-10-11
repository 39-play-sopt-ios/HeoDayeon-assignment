//
//  LoginEmailView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/11/26.
//

import SwiftUI

struct LoginEmailView: View {
    @State private var email = ""
    @FocusState private var isFieldFocused: Bool
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading, spacing: 0) {
                Text("로그인/가입하려는\n이메일을 입력해주세요")
                    .font(.system(size: 23, weight: .semibold))
                    .padding(.top, 152)
                
                Text("결제 등 중요 알림, 로그인, 비밀번호 찾기에 필요해요.\n사용 중인 이메일을 입력해주세요")
                    .font(.system(size: 12, weight: .medium))
                    .lineSpacing(4)
                    .foregroundStyle(.gray280)
                    .padding(.top, 13)
                
                TextField(
                    "email",
                    text: $email,
                    prompt: Text("email@address.com")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.gray250)
                )
                .focused($isFieldFocused)
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(.black)
                .tint(.starbucksGreen)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .frame(height: 47)
                .padding(.horizontal, 15)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(isFieldFocused ? .black : .clear, lineWidth: 1))
                .overlay(alignment: .trailing) {
                    if isFieldFocused {
                        HStack(spacing: 4) {
                            if !email.isEmpty {
                                Button {
                                    email = ""
                                } label: {
                                    Image(.closeCircle)
                                        .frame(width: 24, height: 24)
                                }
                            }
                            Image(email.isEmpty ? .checkDisabled : .checkEnabled)
                                .frame(width: 24, height: 24)
                        }
                        .padding(.trailing, 16)
                    }
                }
                .padding(.top, 27)
                
                Spacer()
                
                NavigationLink {
                    LoginPasswordView(email: email)
                } label: {
                    Text("다음")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundStyle(email.isEmpty ? .gray300 : .white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(email.isEmpty ? .gray200 : .starbucksGreen)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.bottom, 47)
                .disabled(email.isEmpty)
            }
            .padding(.horizontal, 30)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundWhite)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    LoginEmailView()
}
