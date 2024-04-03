//
//  AllCancelOrderViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 이유진 on 4/3/24.
//

import UIKit

class AllCancelOrderViewController: UIViewController {

    var cartName: [String] = []
    
    @IBAction func allCancelButton(_ sender: UIButton) {
        let alertControl = UIAlertController(title: "메뉴를 삭제하시겠습니까?", message: "", preferredStyle: .alert)
                
        let cancelButton = UIAlertAction(title: "취소", style: .default, handler: nil)
        alertControl.addAction(cancelButton)
                
        let deleteButton = UIAlertAction(title: "삭제", style: .default) { _ in
            if !self.cartName.isEmpty {
                self.cartName.removeAll()
                print("메뉴가 삭제되었습니다.")
            } else {
                print("삭제할 메뉴가 없습니다.")
            }
        }
        alertControl.addAction(deleteButton)
                
        self.present(alertControl, animated: true, completion: nil)
    }
    
    
    @IBAction func orderButton(_ sender: UIButton) {
        let alertControl = UIAlertController(title: "결제하시겠습니까?", message: "", preferredStyle: .alert)
        
        let cancelButton = UIAlertAction(title: "취소", style: .default, handler: nil)
        alertControl.addAction(cancelButton)
        
        let confirmButton = UIAlertAction(title: "확인", style: .default) { _ in
            if !self.cartName.isEmpty {
                self.showPaymentScreen()
            }
        }
        alertControl.addAction(confirmButton)
        
        self.present(alertControl, animated: true, completion: nil)
    }
    
    func showPaymentScreen(){
        print("결제")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.cartName.append("아메리카노")
        self.cartName.append("바닐라 콜드 브루 라떼")
    }
    

}

