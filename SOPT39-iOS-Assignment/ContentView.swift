//
//  ContentView.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/11/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 10) {
            Text("SoDo Sans - Bold")
                .font(.soDoSansBold)
            Text("SoDo Sans - Regular")
                .font(.soDoSansRegular)
            Text("SoDo Sans - Light")
                .font(.soDoSansLight)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
