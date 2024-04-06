//
//  CartListTableViewCell.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/3/24.
//

import UIKit

class CartListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var selectedLabel: UILabel!
    @IBOutlet weak var xButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    
    
    var deleteButtonAction: (() -> Void)?
    var updateCartNumAction: (() -> Void)?
    
    
    let cartDataManager = CartDataManager()
    
    
    // 주문 양
    var orderAmount: Int = 1
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        // Label 설정
        setLabel()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)
    }
    
    
    // Label setting
    func setLabel() {
        
        selectedLabel?.numberOfLines = 1
        selectedLabel?.adjustsFontSizeToFitWidth = true
        
        countLabel?.numberOfLines = 1
        countLabel?.adjustsFontSizeToFitWidth = true
    }
    
    
    // add 버튼 클릭 시 해당 음료 수량 증가
    @IBAction func addButton(_ sender: UIButton) {
        
        orderAmount += 1
        
        // cartData 업데이트
        updateCartNumAction?()
    }
    
    
    // minus 버튼 클릭시 해당 음료 수량 감소
    @IBAction func minusButton(_ sender: UIButton) {
        
        if orderAmount >= 2 {
            orderAmount -= 1
        }
        
        // cartData 업데이트
        updateCartNumAction?()
    }
    
    
    // 삭제 버튼 클릭시 해당 음료 삭제
    @IBAction func deleteButtonAction(_ sender: UIButton) {
        
        orderAmount = 0
        
        // cartData 업데이트
        deleteButtonAction?()
    }
    
    

}
