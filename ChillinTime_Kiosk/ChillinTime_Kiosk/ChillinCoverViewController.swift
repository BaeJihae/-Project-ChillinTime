//
//  ChillinCoverViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 민웅킴 on 4/3/24.
//

import UIKit

class ChillinCoverViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var touchMeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.layer.masksToBounds = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        backgroundView.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        // 탭이 감지되었을 때 수행할 동작
        backgroundView.removeFromSuperview() // 뷰를 화면에서 제거
        
        
        
        // 새로운 화면을 보여주는 코드를 여기에 추가하면 됩니다.
        // 예를 들어, 다음 뷰 컨트롤러를 표시하거나 다른 작업을 수행할 수 있습니다.
        // 예, 알겠습니다.
    }

}
