//
//  MenuData.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/3/24.
//

import Foundation
import UIKit

struct MenuData{
    var name: String
    var price: Int
    var image: UIImage?
    var ice: Bool
    var hot: Bool
    var category: MenuCategory
}

extension MenuData {
    static let bestMenu: [MenuData] = [
        MenuData(name: "버블흑당라떼", price: 4700, image: UIImage(named: "bubbleBlackLatte"), ice: true, hot: true, category: .coffee),
        MenuData(name: "허쉬스트로베리초콜릿", price: 4500, image: UIImage(named: "hushStrawberryChoco"), ice: true, hot: true, category: .smoothie),
        MenuData(name: "달고나 라떼", price: 3700, image: UIImage(named: "dalgonaLatte"), ice: true, hot: true, category: .coffee)
    ]
    static let coffeeMenu: [MenuData] = [
        MenuData(name: "아메리카노", price: 3200, image: UIImage(named: "americano"), ice: true, hot: true, category: .coffee),
        MenuData(name: "카페 라떼", price: 4200, image: UIImage(named: "cafeLatte"), ice: true, hot: true, category: .coffee),
        MenuData(name: "콜드브루", price: 3900, image: UIImage(named: "sweetColdblew"), ice: true, hot: false, category: .coffee),
        MenuData(name: "카페 모카", price: 4500, image: UIImage(named: "cafeMoca"), ice: true, hot: true, category: .coffee),
        MenuData(name: "카라멜 마끼아또", price: 4500, image: UIImage(named: "caramelMacchiato"), ice: true, hot: true, category: .coffee),
        MenuData(name: "비엔나 라떼", price: 4900, image: UIImage(named: "viennaCoffe"), ice: true, hot: true, category: .coffee)
    ]
    static let smoothieMenu: [MenuData] = [
        MenuData(name: "밀크 스무디", price: 4700, image: UIImage(named: "milkSmoothie"), ice: true, hot: false, category: .smoothie),
        MenuData(name: "딸기 스무디", price: 5200, image: UIImage(named: "strawberrySmoothie"), ice: true, hot: false, category: .smoothie),
        MenuData(name: "초콜릿 칩 스무디", price: 4900, image: UIImage(named: "chocolateSmoothie"), ice: true, hot: false, category: .smoothie),
        MenuData(name: "망고 스무디", price: 3900, image: UIImage(named: "mangoSmoothie"), ice: true, hot: false, category: .smoothie),
        MenuData(name: "꿀복숭아 스무디", price: 3900, image: UIImage(named: "peachSmoothie"), ice: true, hot: false, category: .smoothie),
        MenuData(name: "플레인 요거트 스무디", price: 4500, image: UIImage(named: "yogurtSmoothie"), ice: true, hot: false, category: .smoothie),
        MenuData(name: "딸기 요거트 스무디", price: 4700, image: UIImage(named: "strawberryYogurtSmoothie"), ice: true, hot: false, category: .smoothie),
        MenuData(name: "초코 쿠키 스무디", price: 4900, image: UIImage(named: "chocoCookieSmoothie"), ice: true, hot: false, category: .smoothie),
        MenuData(name: "블루베리 요거트 스무디", price: 4700, image: UIImage(named: "blueberrySmoothie"), ice: true, hot: false, category: .smoothie)
    ]
    static let adeMenu: [MenuData] = [
        MenuData(name: "자몽 에이드", price: 4200, image: UIImage(named: "grapefruitAde"), ice: true, hot: false, category: .ade),
        MenuData(name: "청포도 에이드", price: 4200, image: UIImage(named: "greengrapeAde"), ice: true, hot: false, category: .ade),
        MenuData(name: "레몬 에이드", price: 4200, image: UIImage(named: "lemonAde"), ice: true, hot: false, category: .ade)
    ]
    static let teaMenu: [MenuData] = [
        MenuData(name: "피치얼그레이", price: 3200, image: UIImage(named: "peachEarlgrey"), ice: true, hot: true, category: .tea),
        MenuData(name: "페퍼민트", price: 3200, image: UIImage(named: "paperMint"), ice: true, hot: true, category: .tea),
        MenuData(name: "히비스커스", price: 3200, image: UIImage(named: "hibiscus"), ice: true, hot: true, category: .tea),
        MenuData(name: "카모마일", price: 3200, image: UIImage(named: "chamomile"), ice: true, hot: true, category: .tea),
        MenuData(name: "루이보스", price: 3200, image: UIImage(named: "rooibos"), ice: true, hot: true, category: .tea),
        MenuData(name: "자몽오렌지", price: 4500, image: UIImage(named: "grapefruitOrange"), ice: true, hot: true, category: .tea)
    ]
    static let dessertMenu: [MenuData] = [
        MenuData(name: "생딸기 허니리코타 팬 케이크", price: 6900, image: UIImage(named: "panCake"), ice: false, hot: false, category: .dessert),
        MenuData(name: "대파 크림치즈 베이글", price: 4200, image: UIImage(named: "cheesebagle"), ice: false, hot: false, category: .dessert),
        MenuData(name: "스노우 쿠키 슈", price: 2100, image: UIImage(named: "snowCookie"), ice: false, hot: false, category: .dessert),
        MenuData(name: "수플레 치즈 케이크", price: 4500, image: UIImage(named: "cheeseCake"), ice: false, hot: false, category: .dessert),
        MenuData(name: "소금빵", price: 3000, image: UIImage(named: "saltBread"), ice: false, hot: false, category: .dessert),
        MenuData(name: "허니카라멜브레드", price: 5200, image: UIImage(named: "honeyBread"), ice: false, hot: false, category: .dessert)
    ]
    
}
