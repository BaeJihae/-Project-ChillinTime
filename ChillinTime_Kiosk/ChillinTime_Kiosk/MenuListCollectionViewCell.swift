//
//  MenuListCollectionViewCell.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/3/24.
//

import UIKit
import Foundation

class MenuListCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menuPriceLabel: UILabel!
    @IBOutlet weak var menuNameLabel: UILabel!
    @IBOutlet weak var iceImageView: UIImageView!
    @IBOutlet weak var hotImageView: UIImageView!
    
    
    // cell 선택시 색깔 변경
    override var isHighlighted: Bool {
        didSet {
            guard self.isHighlighted else { return }
            
            contentView.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 0.3)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
                self.contentView.backgroundColor = .white
            }
        }
    }
    
    
    func setConfigue(_ data: MenuData){
        
        
        // 이미지가 있다면 설정
        if let image = data.image {
            menuImageView.image = image
        }
        
        
        // 핫 이미지 설정
        hotImageView.isHidden = data.hot ? false : true
        
        
        // 아이스 이미지 설정
        iceImageView.isHidden = data.ice ? false : true
        
        
        
        // 메뉴 가격 설정
        menuPriceLabel.text = String(data.price) + "원"
        
        
        // 메뉴 이름 설정
        menuNameLabel.text = data.name
        
        
        // 메뉴 cell 테두리 설정
        contentView.layer.cornerRadius = 16
        contentView.clipsToBounds = true
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1.0).cgColor
    }
    
    
    
    
}
