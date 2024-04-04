//
//  ModalViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 이유진 on 4/4/24.
//

import UIKit

class ModalViewController: UIViewController {

    
    @IBOutlet weak var customModalView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.clear

        customModalView.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1.0).withAlphaComponent(1)
        customModalView.layer.cornerRadius = 10
  
    }
    
}
