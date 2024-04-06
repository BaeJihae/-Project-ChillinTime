//
//  CartDataManager.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/3/24.
//

import Foundation

struct CartDataManager {
    
    private static var cart: [CartData] = []
    
    private static var isTogo: Bool = true
    
    
    // cart 데이터 추가
    mutating func addCartData(name: String,
                              count: Int,
                              price: Int,
                              category: MenuCategory,
                              hotIceOption: hotIceOption?,
                              iceAmountOption: iceAmountOption?,
                              warmingOption: warmingOption?,
                              sugarLevelOption: sugarLevelOption?) -> Bool {
        
    
        let newdata = CartData(cartNum: count, cartName: name, cartPrice: price, category: category, hotIceOption: hotIceOption, iceAmountOption: iceAmountOption, warmingOption: warmingOption, sugarLevelOption: sugarLevelOption)
            
        for cartdata in CartDataManager.cart{
            if equalable(cartdata1: cartdata, cartdata2: newdata) {
                return false
            }
        }
        
        CartDataManager.cart.append(newdata)
        return true
    }
    
    
    // cart 데이터 불러오기
    func getCartData() -> [CartData]{
        
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
    
    
    // cart 물건의 수
    func countCartData() -> Int {
        
        return CartDataManager.cart.reduce(0) { $0 + $1.cartNum }
    }
    
    
    // cart 총 합
    func countTotal(_ isTogo: Bool) -> Int {
        
        if isTogo {
            return CartDataManager.cart.reduce(0) { $0 + $1.cartNum * $1.cartPrice } - 500
        }else {
            return CartDataManager.cart.reduce(0) { $0 + $1.cartNum * $1.cartPrice }
        }
    }
    
    
    // cart 전체 삭제
    func removeAllData() {
        
        CartDataManager.cart = []
    }
    
    
    // cart값 비교 함수
    private func equalable(cartdata1: CartData,
                           cartdata2: CartData) -> Bool {
        
        if cartdata1.cartName != cartdata2.cartName || cartdata1.hotIceOption != cartdata2.hotIceOption || cartdata1.iceAmountOption != cartdata2.iceAmountOption || cartdata1.sugarLevelOption != cartdata2.sugarLevelOption || cartdata1.warmingOption != cartdata2.warmingOption {
                return false
        } else {
            return true
        }
    }
    
    // 포장 / 배달 설정
    func setIsTogo(_ isTogo: Bool) {
        CartDataManager.isTogo = isTogo
    }
    
    func getIsTogo() -> Bool {
        return CartDataManager.isTogo
    }
}
