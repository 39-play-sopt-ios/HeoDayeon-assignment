//
//  LoginPasswordView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/11/26.
//

import SwiftUI

struct LoginPasswordView: View {
    let email: String
    
    
    @FocusState private var isFieldFocused: Bool
    @State private var showSheet = false
    
    @State private var password = ""
    @State private var showPassword = false
    private var isPasswordValid: Bool {
        password.wholeMatch(of: /(?=.*[A-Za-z])(?=.*[0-9])(?=.*[^A-Za-z0-9]).{10,}/) != nil
    }
    
    @State private var nickname = ""
    @State private var isNickNameSetted = false
    private var isSignUpCompleted: Bool { isPasswordValid && isNickNameSetted}
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text("사용할 비밀번호를\n입력해주세요")
                .font(.system(size: 23, weight: .semibold))
                .padding(.top, 152)
            
            Text("\(email)로 가입중")
                .font(.system(size: 12, weight: .medium))
                .lineSpacing(4)
                .foregroundStyle(.gray300)
                .padding(.top, 13)
            
            ZStack {
                if showPassword {
                    TextField(
                        "password",
                        text: $password,
                        prompt: Text("비밀번호 입력")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.gray250)
                    )
                    .disabled(!showPassword)
                } else {
                    SecureField(
                        "password",
                        text: $password,
                        prompt: Text("비밀번호 입력")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.gray250)
                    )
                    .disabled(showPassword)
                }
            }
            .focused($isFieldFocused)
            .font(.system(size: 12, weight: .regular))
            .foregroundStyle(.black)
            .tint(.starbucksGreen)
            .textContentType(.password)
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
            .frame(height: 47)
            .padding(.horizontal, 15)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(isFieldFocused || !password.isEmpty ? .gray200 : .clear, lineWidth: 1))
            .overlay(alignment: .trailing) {
                if isFieldFocused || !password.isEmpty {
                    HStack(spacing: 4) {
                        if !password.isEmpty {
                            Button {
                                password = ""
                            } label: {
                                Image(.closeCircle)
                                    .frame(width: 24, height: 24)
                            }
                        }
                        
                        if !password.isEmpty {
                            Button {
                                showPassword.toggle()
                            } label: {
                                Image(showPassword ? .eyeEnabled : .eyeDisabled)
                            }
                        }
                        
                    }
                    .padding(.trailing, 16)
                }
            }
            .padding(.top, 27)
            
            HStack(spacing: 5) {
                if isPasswordValid {
                    Image(.checkCircleEnabled)
                        .frame(width: 13, height: 13)
                    
                    Text("영문, 숫자, 특수문자 포함 10글자 이상")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.starbucksGreen)
                } else {
                    Image(.checkCircleDisabled)
                        .frame(width: 13, height: 13)
                    
                    Text("영문, 숫자, 특수문자 포함 10글자 이상")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.gray300)
                }                }
            .padding(.top, 13)
            
            Button {
                showSheet = true
            } label: {
                Group {
                    if isNickNameSetted {
                        Text("\(nickname)")
                    } else {
                        Text("닉네임 설정")
                            .underline()
                    }
                }
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(.gray300)
                
            }
            .padding(.top, 40)
            .frame(maxWidth: .infinity)
            
            Spacer()
            
            NavigationLink {
                SignUpCompletedView(name: nickname)
            } label: {
                Text("가입하기")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundStyle(isSignUpCompleted ? .white : .gray300)
                    .frame(maxWidth: .infinity)
                    .frame(height: 56)
                    .background(isSignUpCompleted ? .starbucksGreen : .gray200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .disabled(!isSignUpCompleted)
            .padding(.bottom, 47)
        }
        .padding(.horizontal, 30)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundWhite)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .sheet(isPresented: $showSheet) {
            VStack (alignment: .leading, spacing: 0) {
                Text("닉네임을 입력해주세요")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(.white)
                    .padding(.leading, 22)
                    .padding(.top, 47)
                
                TextField(
                    "nickname",
                    text: $nickname,
                    prompt: Text("닉네임을 입력해주세요")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.gray250)
                )
                .font(.system(size: 12, weight: .regular))
                .foregroundStyle(.black)
                .tint(.darkGreen)
                .padding(.horizontal, 15)
                .frame(maxWidth: .infinity)
                .frame(height: 47)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 29)
                .padding(.top, 19)
                
                Spacer()
                
                Button {
                    isNickNameSetted = true
                    showSheet = false
                } label: {
                    Text("완료")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundStyle(.starbucksGreen)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 20)
                .padding(.bottom, 47)
                
            }
            .presentationDetents([.fraction(0.5)])
            .presentationBackground(.darkGreen)
            .presentationDragIndicator(.visible)
        }
        
    }
    
    
}

#Preview {
    LoginPasswordView(email: "email.com")
}
