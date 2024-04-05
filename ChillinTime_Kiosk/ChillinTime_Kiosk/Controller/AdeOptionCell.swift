//
//  Option3TableViewCell.swift
//  ChillinTime_Kiosk
//
//  Created by 민웅킴 on 4/5/24.
//

import UIKit

class AdeOptionCell: UITableViewCell {
    
    
    @IBOutlet weak var lessSugar: UIButton!
    @IBOutlet weak var noneSugar: UIButton!
    @IBOutlet weak var moreSugar: UIButton!

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
    
    
    
    
    // MARK: - 당도 옵션

    @IBAction func lessSugarTapped(_ sender: UIButton) {
        
        delegate?.lessSugarButtonTapped(in: self)
    }
    
    
    @IBAction func noneSugarTapped(_ sender: UIButton) {
        
        delegate?.noneSugarButtonTapped(in: self)
    }
    
    
    @IBAction func moreSugarTapped(_ sender: Any) {
        delegate?.moreSugarButtonTapped(in: self)
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
