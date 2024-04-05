//
//  Option3TableViewCell.swift
//  ChillinTime_Kiosk
//
//  Created by 민웅킴 on 4/5/24.
//

import UIKit

class AdeOptionCell: UITableViewCell {
    
    weak var delegate: OptionCellDelegate?
    
    @IBOutlet weak var hotAndIceLabel: UILabel!
    @IBOutlet weak var hotBTN: UIButton!
    @IBOutlet weak var iceBTN: UIButton!
    
    @IBOutlet weak var iceLabel: UILabel!
    @IBOutlet weak var noneIce: UIButton!
    @IBOutlet weak var lessIce: UIButton!
    @IBOutlet weak var moreIce: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }
    

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
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
    


}
