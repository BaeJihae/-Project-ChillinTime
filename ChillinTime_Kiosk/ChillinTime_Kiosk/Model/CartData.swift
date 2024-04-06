//
//  CartData.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/3/24.
//

import Foundation

struct CartData{
    
    var cartNum: Int
    var cartName: String
    var cartPrice: Int
    var category: MenuCategory
    var hotIceOption: hotIceOption?
    var iceAmountOption: iceAmountOption?
    var warmingOption: warmingOption?
    var sugarLevelOption: sugarLevelOption?
}

enum hotIceOption: String {
    case hot = "핫"
    case ice = "아이스"
}

enum iceAmountOption: String {
    case noneIce = "얼음 적게"
    case lessIce = "얼음 보통"
    case muchIce = "얼음 많이"
}

enum warmingOption: String {
    case warming = "따뜻하게 데움"
    case unwarming = "안 데움"
}

enum sugarLevelOption: String {
    case lessSweet = "당도 덜달게"
    case usually = "당도 보통"
    case muchSweet = "당도 더달게"
}


