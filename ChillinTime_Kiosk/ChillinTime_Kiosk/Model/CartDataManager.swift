//
//  CartDataManager.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/3/24.
//

import Foundation

struct CartDataManager {
    private var cart: [CartData] = []
    
    mutating func addCartData(name: String) {
        cart.filter{ $0.cartName == name }.count == 0 ? cart.append(CartData(cartNum: 1, cartName: name)) : print("이미 들어있는 메뉴입니다.")
    }
    
    func getCartData() -> [CartData] {
        return cart
    }
}
