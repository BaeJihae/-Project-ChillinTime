//
//  ViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/3/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bestBtn: UIButton!
    @IBOutlet weak var coffeeBtn: UIButton!
    @IBOutlet weak var smoothieBtn: UIButton!
    @IBOutlet weak var adeBtn: UIButton!
    @IBOutlet weak var teaBtn: UIButton!
    @IBOutlet weak var dessertBtn: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    
    
    // 카테고리 버튼
    lazy var categories = [bestBtn, coffeeBtn, smoothieBtn, adeBtn, teaBtn, dessertBtn]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // 버튼 선택 시 category 변경 ( 카테고리 버튼 연결 )
    @IBAction func reloadBeverages(_ sender: UIButton) {
        
        changeBackColor(button: sender)
        
        if let buttonName = sender.titleLabel?.text {
            // 메뉴 데이터 변경
        }
    }

    
    // 처음 화면 로드 시 버튼 컬러 변경
    func setBackColor() {
        changeBackColor(button: bestBtn)
    }
    
    
    // 배경 컬러 변경 구현
    private func changeBackColor(button: UIButton) {
        let maskPath = UIBezierPath(roundedRect: button.bounds,
                                    byRoundingCorners: [.topLeft, .topRight],
                                    cornerRadii: CGSize(width: 10, height: 10))
        
        
        // 메뉴 탭 바 버튼 둥글게
        let maskLayer = CAShapeLayer()
        maskLayer.frame = button.bounds
        maskLayer.path = maskPath.cgPath
        button.layer.mask = maskLayer
        
        
        // 버튼의 배경 색상과 컬러 변경
        categories.forEach {
            $0?.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1)
            $0?.tintColor = .white
            
        }
        
        
        // 버튼의 배경 색상과 컬러 설정
        button.backgroundColor = .white
        button.tintColor = UIColor(red: 43/255, green: 167/255, blue: 255/255, alpha: 1)
        
    }
}

