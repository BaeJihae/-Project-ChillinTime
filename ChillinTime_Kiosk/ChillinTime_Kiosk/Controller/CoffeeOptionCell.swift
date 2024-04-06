//
//  OptionTableViewCell.swift
//  ChillinTime_Kiosk
//
//  Created by 민웅킴 on 4/4/24.
//

import UIKit

class CoffeeOptionCell: UITableViewCell {
    
    
    @IBOutlet weak var hotBtn: UIButton!
    @IBOutlet weak var iceBtn: UIButton!
    
    @IBOutlet weak var noneIce: UIButton!
    @IBOutlet weak var lessIce: UIButton!
    @IBOutlet weak var moreIce: UIButton!
    
    
    weak var delegate: OptionCellDelegate?
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    
    
    override func setSelected(_ selected: Bool, 
                              animated: Bool) {
        
        super.setSelected(selected, animated: animated)
    }
    
    
    
    
    // MARK: - 온도 옵션

    @IBAction func hotButtonTapped(_ sender: UIButton) {
        
        delegate?.hotButtonTapped(in: self)
    }
    
    
    @IBAction func iceButtonTapped(_ sender: UIButton) {
        
        delegate?.iceButtonTapped(in: self)
    }
    
    
    
    
    // MARK: - 얼음 옵션

    @IBAction func noneIceButtonTapped(_ sender: UIButton) {
        
        delegate?.noneIceButtonTapped(in: self)
    }
    
    
    @IBAction func lessIceButtonTapped(_ sender: UIButton) {
        
        delegate?.lessIceButtonTapped(in: self)
    }
    
    
    @IBAction func moreIceButtonTapped(_ sender: UIButton) {
        
        delegate?.moreIceButtonTapped(in: self)
    }
    
}
