//
//  ChillinCoverViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 민웅킴 on 4/3/24.
//

import UIKit

class ChillinCoverViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundView: UIView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, 
                                                action: #selector(handleTap(_:)))
        
        backgroundView.addGestureRecognizer(tapGesture)
    }
    
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
    
        
        guard let vcName = self.storyboard?.instantiateViewController(withIdentifier: "TogoViewController") as? TogoViewController else {
            return
        }
        
        // 전체 화면으로 설정 / 전환 애니메이션
        vcName.modalPresentationStyle = .fullScreen
        vcName.modalTransitionStyle = .crossDissolve
        
        self.present(vcName, animated: true, completion: nil)
    }

}
