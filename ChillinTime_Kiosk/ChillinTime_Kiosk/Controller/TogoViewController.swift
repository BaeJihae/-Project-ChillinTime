//
//  TogoViewController.swift
//  ChillinTime_Kiosk
//
//  Created by A Hyeon on 4/3/24.
//

import UIKit

class TogoViewController: UIViewController {

    
    @IBOutlet weak var togo: UIButton!
    @IBOutlet weak var here: UIButton!
    
    let cartDataManager = CartDataManager()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    
    // 포장 버튼 클릭시 다음 페이지 이동 구현
    @IBAction func togo(_ sender: Any) {
        
        guard let vcName = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            return
        }
        
        // 전체 화면으로 설정 / 전환 애니메이션
        vcName.modalPresentationStyle = .fullScreen
        vcName.modalTransitionStyle = .crossDissolve
        
        cartDataManager.setIsTogo(true)
        
        self.present(vcName, animated: true, completion: nil)
    }
    
    
    // 매장 버튼 클릭시 다음 페이지 이동 구현
    @IBAction func here(_ sender: Any) {
        
        guard let vcName = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            return
        }
        
        // 전체 화면으로 설정 / 전환 애니메이션
        vcName.modalPresentationStyle = .fullScreen
        vcName.modalTransitionStyle = .crossDissolve
        
        cartDataManager.setIsTogo(false)
        
        self.present(vcName, animated: true, completion: nil)
    }
}
