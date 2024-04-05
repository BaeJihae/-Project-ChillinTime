//
//  ModalViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 이유진 on 4/4/24.
//

import UIKit

class ModalViewController: UIViewController {

    
    @IBOutlet weak var customModalView: UIView!
    @IBOutlet weak var datailBackgroundView: UIView!
    @IBOutlet weak var detailMenuImageView: UIImageView!
    @IBOutlet weak var detailMenuLabelView: UILabel!
    @IBOutlet weak var detailCartCountLabel: UILabel!
    @IBOutlet weak var detailMinusButton: UIButton!
    @IBOutlet weak var detailPlusButton: UIButton!
    @IBOutlet weak var detailOptionTableView: UITableView!
    @IBOutlet weak var detailcancelButton: UIButton!
    @IBOutlet weak var detailInCartButton: UIButton!
    
    
    let cartDataManger = CartDataManager()
    
    var orderAmount = 1
    
    var menuData: MenuData?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setting()
        
        setCustomModalView()
        
        setLabel()
  
        setViewLayer()
    }
    
    
    func setting() {
        
        guard let menuData = menuData else { return }
        
        if let menuImage = menuData.image {
            print(menuImage)
            detailMenuImageView.image = menuImage
        }
        
        detailMenuLabelView.text = menuData.name
        
        detailCartCountLabel.text = "\(orderAmount)"
    }
    
    
    func setCustomModalView(){
        
        view.backgroundColor = UIColor.clear

        customModalView.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1.0).withAlphaComponent(1)
        customModalView.layer.cornerRadius = 10
        
    }
    
    
    func setViewLayer() {
        datailBackgroundView.layer.cornerRadius = 12
        datailBackgroundView.clipsToBounds = true
    }
    
    
    // Label setting
    func setLabel() {
        
        detailMenuLabelView?.numberOfLines = 1
        detailMenuLabelView?.adjustsFontSizeToFitWidth = true
        
        detailCartCountLabel?.numberOfLines = 1
        detailCartCountLabel?.adjustsFontSizeToFitWidth = true
    }
    
    
    @IBAction func detailMinusButtonTapped(_ sender: UIButton) {
        
        if orderAmount >= 2 {
            orderAmount -= 1
        } else {
            print("최소 수량입니다.")
        }
        
        detailCartCountLabel.text = "\(orderAmount)"
    }
    
    
    @IBAction func detailPlusButtonTapped(_ sender: UIButton) {
        
        orderAmount += 1
        
        detailCartCountLabel.text = "\(orderAmount)"
    }
    
    
    @IBAction func detailCancelButtonTapped(_ sender: UIButton) {
        
        
        
    }
    
    
    @IBAction func detailInCartButtonTapped(_ sender: UIButton) {
        
        
        
        
    }
    
}
