//
//  BeverageMenuData.swift
//  SOPT39-iOS-Assignment
//
//  Created by dayeon on 10/30/26.
//

final class BeverageMenuData {
    private(set) var beverages: [BeverageMenuModel] = [
        BeverageMenuModel(
            imageName: "menu_1",
            nameKor: "아이스 카스텔라 고구마 라떼",
            nameEng: "Iced Castella Sweet Potato Milk",
            price: 6900,
            description: "가을에 잘 어울리는 군고구마를 한 잔에 담은 음료.\n포슬한 카스텔라, 쫀득한 펄이 어우러져 다채로운 식감을 즐길 수 있는 음료.",
            isIceOnly: true,
            alert: "*컬러 드리즐은 시간이 지날수록 번지는 현상이 있으나 음료 품질과는 무관하니 안심하고 드세요.",
            category: Category.espressoCoffee,
            isNew: true,
            isRecommended: true),
        
        BeverageMenuModel(
            imageName: "menu_2",
            nameKor: "아이스 말차 글레이즈드 티 라떼",
            nameEng: "Iced Malcha Glazed Tea Latte",
            price: 6700,
            description: "글레이즈드의 색다른 변신! 쌉싸름한 말차와 달콤한 글레이즈드 소스를 넣어 조화롭게 즐기기 좋은 비주얼과 맛의 티 라떼 음료",
            isIceOnly: false,
            alert: "*말차 글레이즈드 티 라떼에는 카페인이 함유 되어 있습니다.\n*말차 글레이즈드 베이스에는 우유가 포함되어 있습니다.",
            category: Category.espressoCoffee,
            isNew: true,
            isRecommended: false),
        
        BeverageMenuModel(
            imageName: "menu_3",
            nameKor: "스타벅스 자몽 허니 에어로카노",
            nameEng: "Starbucks Grapefruit Honey Aerocano",
            price: 6100,
            description: "상큼한 자몽의 풍미와 벨벳같은 미세한 거품으로 부드러운 목넘김이 조화롭게 어우러져 밝고 산뜻하면서도 균형 잡힌 맛을 선사하는 에어로카노",
            isIceOnly: true,
            alert: nil,
            category: Category.coldBrew,
            isNew: true,
            isRecommended: false),
    ]
}
