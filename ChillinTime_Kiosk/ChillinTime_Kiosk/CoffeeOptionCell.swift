//
//  OptionTableViewCell.swift
//  ChillinTime_Kiosk
//
//  Created by 민웅킴 on 4/4/24.
//

import UIKit

class CoffeeOptionCell: UITableViewCell {
    
    weak var delegate: OptionCellDelegate?
    
    @IBOutlet weak var hotAndIceLabel: UILabel!
    @IBOutlet weak var hotBTN: UIButton!
    @IBOutlet weak var iceBTN: UIButton!
    
    @IBOutlet weak var iceLabel: UILabel!
    @IBOutlet weak var noneIce: UIButton!
    @IBOutlet weak var lessIce: UIButton!
    @IBOutlet weak var moreIce: UIButton!
    
    @IBOutlet weak var sugarLabel: UILabel!
    @IBOutlet weak var lessSugar: UIButton!
    @IBOutlet weak var noneSugar: UIButton!
    @IBOutlet weak var moreSugar: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        //        tableView.isScrollEnabled = false
    }
    
    
    
    
    //  핫/아이스
    @IBAction func hotButtonTapped(_ sender: UIButton) {
        delegate?.hotButtonTapped(in: self)
    }
    
    @IBAction func iceButtonTapped(_ sender: UIButton) {
        delegate?.iceButtonTapped(in: self)
    }
    
    
    //  얼음
    @IBAction func noneIceButtonTapped(_ sender: UIButton) {
        delegate?.noneIceButtonTapped(in: self)
    }
    
    @IBAction func lessIceButtonTapped(_ sender: UIButton) {
        delegate?.lessIceButtonTapped(in: self)
    }
    
    @IBAction func moreIceButtonTapped(_ sender: UIButton) {
        delegate?.moreIceButtonTapped(in: self)
    }
    
    
    
    //  당도
    @IBAction func lessSugarButtonTapped(_ sender: UIButton) {
        delegate?.lessSugarButtonTapped(in: self)
    }
    
    @IBAction func noneSugarButtonTapped(_ sender: UIButton) {
        delegate?.noneSugarButtonTapped(in: self)
    }
    
    @IBAction func moreSugarButtonTapped(_ sender: UIButton) {
        delegate?.moreSugarButtonTapped(in: self)
    }
    
}
