//
//  Ahyeon2ViewController.swift
//  ChillinTime_Kiosk
//
//  Created by A Hyeon on 4/4/24.
//

import UIKit

class Ahyeon2ViewController: UIViewController {
    
    @IBOutlet weak var examBtn: UIButton!
    @IBOutlet weak var modalCancelBtn: UIButton!
    @IBOutlet weak var modalAddCartBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func exampleBtn(_ sender: Any) {
        guard let svc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        //화면 모달로 전환! 근데 이제 풀스크린입니다!
        svc.modalPresentationStyle = .fullScreen
        svc.modalTransitionStyle = .crossDissolve
        
        self.present(svc, animated: true)
        
    }
    
    //버튼 클릭시 exampleBtn있는 화면으로 이동
    @IBAction func modalCancelBtn(_ sender: Any) {
        guard let beforeVC = self.storyboard?.instantiateViewController(withIdentifier: "FirstVC") else {
            return
        }
        
        //화면 모달로 전환 & 풀스크린
        beforeVC.modalPresentationStyle = .fullScreen
        beforeVC.modalTransitionStyle = .crossDissolve
        
        self.present(beforeVC, animated: true)
    }
    
    //담기 버튼
    @IBAction func modalAddCartBtn(_ sender: Any) {
        guard let beforeVC = self.storyboard?.instantiateViewController(withIdentifier: "FirstVC") else {
            return
        }
        
        //화면 모달로 전환 & 풀스크린
        beforeVC.modalPresentationStyle = .fullScreen
        beforeVC.modalTransitionStyle = .crossDissolve
        
        self.present(beforeVC, animated: true)
    }
    
    //    func addCart 데이터 추가 되는 부분 여기 작업해주시면 될 것 같습니다.
    
    
    
}
