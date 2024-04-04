//
//  Yujin2ViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 이유진 on 4/4/24.
//

import UIKit

//모달 표시
class Yujin2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //버튼 누르면 모달 표시(스타일, 전환 애니메이션 설정)
    @IBAction func showModalButton(_ sender: UIButton) {
        let modalViewController = UIViewController()

        modalViewController.view.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1.0).withAlphaComponent(1)
        modalViewController.modalPresentationStyle = .custom
        modalViewController.transitioningDelegate = self
        modalViewController.modalTransitionStyle = .coverVertical
        
        present(modalViewController, animated: true, completion: nil)
    }
}

//클래스 ModalPresentationController에서 커스텀된 화면을 모달에서 사용
extension Yujin2ViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return ModalPresentationController(presentedViewController: presented, presenting: presenting)
    }
}

//모달 프레젠테이션 커스텀
class ModalPresentationController: UIPresentationController {
    
    override var frameOfPresentedViewInContainerView: CGRect {
        guard containerView != nil else { return CGRect.zero }
        
        let width: CGFloat = 393
        let height: CGFloat = 631
        let x: CGFloat = 0
        let y: CGFloat = UIScreen.main.bounds.height - height
        
        let presentedModalFrame = CGRect(x: x, y: y, width: width, height: height)
        presentedView?.layer.cornerRadius = 20
        
        return presentedModalFrame
    }
}
