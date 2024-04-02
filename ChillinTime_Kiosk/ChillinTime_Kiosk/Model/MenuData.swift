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
}
extension MenuData {
    static let bestMenu: [MenuData] = [
        MenuData(name: "버블흑당라떼", price: 4700, image: UIImage(named: "버블흑당라떼"), ice: true, hot: true),
        MenuData(name: "허쉬스트로베리초콜릿", price: 4500, image: UIImage(named: "허쉬스트로베리초콜릿"), ice: true, hot: true),
        MenuData(name: "달고나 라떼", price: 3700, image: UIImage(named: "달고나라떼"), ice: true, hot: true)
    ]
    static let coffeeMenu: [MenuData] = [
        MenuData(name: "아메리카노", price: 3200, image: UIImage(named: "아메리카노"), ice: true, hot: true),
        MenuData(name: "카페 라떼", price: 4200, image: UIImage(named: "카페 라떼"), ice: true, hot: true),
        MenuData(name: "콜드브루", price: 3900, image: UIImage(named: "연유 콜드브루"), ice: true, hot: false),
        MenuData(name: "카페 모카", price: 4500, image: UIImage(named: "카페 모카"), ice: true, hot: true),
        MenuData(name: "카라멜 마끼아또", price: 4500, image: UIImage(named: "카라멜 마끼아또"), ice: true, hot: true),
        MenuData(name: "비엔나 라떼", price: 4900, image: UIImage(named: "비엔나 커피"), ice: true, hot: true)
    ]
    static let smoothieMenu: [MenuData] = [
        MenuData(name: "밀크 스무디", price: 4700, image: UIImage(named: "밀크 스무디"), ice: true, hot: false),
        MenuData(name: "딸기 스무디", price: 5200, image: UIImage(named: "딸기 스무디"), ice: true, hot: false),
        MenuData(name: "초콜릿 칩 스무디", price: 4900, image: UIImage(named: "초콜릿 칩 스무디"), ice: true, hot: false),
        MenuData(name: "망고 스무디", price: 3900, image: UIImage(named: "망고 스무디"), ice: true, hot: false),
        MenuData(name: "꿀복숭아 스무디", price: 3900, image: UIImage(named: "꿀복숭아 스무디"), ice: true, hot: false),
        MenuData(name: "플레인 요거트 스무디", price: 4500, image: UIImage(named: "플레인 요거트 스무디"), ice: true, hot: false),
        MenuData(name: "딸기 요거트 스무디", price: 4700, image: UIImage(named: "딸기요거트 스무디"), ice: true, hot: false),
        MenuData(name: "초코 쿠키 스무디", price: 4900, image: UIImage(named: "초코쿠키 스무디"), ice: true, hot: false),
        MenuData(name: "블루베리 요거트 스무디", price: 4700, image: UIImage(named: "블루베리 요거트 스무디"), ice: true, hot: false)
    ]
    static let adeMenu: [MenuData] = [
        MenuData(name: "자몽 에이드", price: 4200, image: UIImage(named: "자몽 에이드"), ice: true, hot: false),
        MenuData(name: "청포도 에이드", price: 4200, image: UIImage(named: "청포도 에이드"), ice: true, hot: false),
        MenuData(name: "레몬 에이드", price: 4200, image: UIImage(named: "레몬 에이드"), ice: true, hot: false)
    ]
    static let teaMenu: [MenuData] = [
        MenuData(name: "피치얼그레이", price: 3200, image: UIImage(named: "피치얼그레이"), ice: true, hot: true),
        MenuData(name: "페퍼민트", price: 3200, image: UIImage(named: "페퍼민트"), ice: true, hot: true),
        MenuData(name: "히비스커스", price: 3200, image: UIImage(named: "히비스커스"), ice: true, hot: true),
        MenuData(name: "카모마일", price: 3200, image: UIImage(named: "카모마일"), ice: true, hot: true),
        MenuData(name: "루이보스", price: 3200, image: UIImage(named: "루이보스"), ice: true, hot: true),
        MenuData(name: "자몽오렌지", price: 4500, image: UIImage(named: "자몽오렌지"), ice: true, hot: true)
    ]
    static let dessertMenu: [MenuData] = [
        MenuData(name: "생딸기 허니리코타 팬 케이크", price: 6900, image: UIImage(named: "생딸기허니리코타팬케이크"), ice: false, hot: false),
        MenuData(name: "대파 크림치즈 베이글", price: 4200, image: UIImage(named: "대파크림치즈베이글"), ice: false, hot: false),
        MenuData(name: "스노우 쿠키 슈", price: 2100, image: UIImage(named: "스노우쿠키슈"), ice: false, hot: false),
        MenuData(name: "수플레 치즈 케이크", price: 4500, image: UIImage(named: "수플레치즈케이크"), ice: false, hot: false),
        MenuData(name: "소금빵", price: 3000, image: UIImage(named: "소금빵"), ice: false, hot: false),
        MenuData(name: "허니카라멜브레드", price: 5200, image: UIImage(named: "허니카라멜브레드"), ice: false, hot: false)
    ]
    
}
