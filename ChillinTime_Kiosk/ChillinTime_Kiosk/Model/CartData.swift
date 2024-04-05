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
    var hotIceOption: hotIceOption?
    var iceAmountOption: iceAmountOption?
    var warmingOption: Bool?
    var sugarLevelOption: sugarLevelOption?
}

enum hotIceOption {
    case hot
    case ice
}

enum iceAmountOption {
    case none
    case less
    case much
}

enum sugarLevelOption {
    case lessSweet
    case usually
    case muchSweet
}
