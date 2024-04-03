//
//  CartDataManager.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/3/24.
//

import Foundation

struct CartDataManager {
    
    
    private static var cart: [CartData] = []
    
    
    // cart 데이터 추가
    mutating func addCartData(name: String, price: Int) {
        CartDataManager.cart.filter{ $0.cartName == name }.count == 0 ? CartDataManager.cart.append(CartData(cartNum: 1, cartName: name, cartPrice: price)) : print("이미 들어있는 메뉴입니다.")
    }
    
    
    // cart 데이터 받기
    func getCartData() -> [CartData] {
        return CartDataManager.cart
    }
    
    
    // cart 데이터 삭제
    mutating func deleteCartData(_ index: IndexPath) {
        CartDataManager.cart.remove(at: index.row)
    }
    
    
    // cart 데이터 업데이트
    mutating func updateCartNum(_ index: IndexPath,
                                _ cartNum: Int) {
        CartDataManager.cart[index.row].cartNum = cartNum
    }
    
    func countCartData() -> Int {
        return CartDataManager.cart.reduce(0) { $0 + $1.cartNum }
    }
    
    func countTotal() -> Int {
        return CartDataManager.cart.reduce(0) { $0 + $1.cartNum * $1.cartPrice }
    }
}
