//
//  BeverageMenuModel.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//
import Foundation

enum Category: Hashable {
    case new
    case recommended
    case coldBrew
    case blonde
    case espressoCoffee
}

struct BeverageMenuModel: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let nameKor: String
    let nameEng: String
    let price: Int
    let description: String
    let isIceOnly: Bool
    let alert: String?
    let category: Category
    let isNew: Bool
    let isRecommended: Bool
}
