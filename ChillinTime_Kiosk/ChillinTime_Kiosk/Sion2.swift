//
//  SionVC2.swift
//  ChillinTime_Kiosk
//
//  Created by t2023-m0095 on 4/4/24.
//

import UIKit

class SionVC2: UIViewController {
    
    @IBOutlet weak var blueView : UIView!
    @IBOutlet weak var whiteView : UIView!
    @IBOutlet weak var selectedImage : UIImageView!
    @IBOutlet weak var selectedLabel : UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    
    // 주문 양
    var orderAmount = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView.layer.cornerRadius = 14
        whiteView.layer.cornerRadius = 12
    }
    
    
    
//    // 선택 메뉴 표시(수정필요)
    
//    func setConfigue(_ data: MenuData){
//        
//        // 메뉴 이미지
//        selectedImage.image = data.image
//        
//        
//        // 메뉴 이름 설정
//        selectedLabel.text = data.name
//    }

        
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
        
        countLabel.text = String(orderAmount)
    }
    
    
    
    // minus 버튼 클릭시 해당 음료 수량 감소
    @IBAction func minusButton(_ sender: UIButton) {
        
        if orderAmount >= 2 {
            orderAmount -= 1
        } else {
            print("최소 수량입니다.")
        }
        
        countLabel.text = String(orderAmount)
        
    }
    

}
