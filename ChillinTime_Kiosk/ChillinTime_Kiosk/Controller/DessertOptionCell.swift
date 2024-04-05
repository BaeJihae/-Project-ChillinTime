//
//  Option2TableViewCell.swift
//  ChillinTime_Kiosk
//
//  Created by 민웅킴 on 4/4/24.
//

import UIKit

class DessertOptionCell: UITableViewCell {
    
    
    @IBOutlet weak var heatBTN: UIButton!
    @IBOutlet weak var notHeatBTN: UIButton!
    
    
    weak var delegate: OptionCellDelegate?
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    
    
    override func setSelected(_ selected: Bool, 
                              animated: Bool) {
        
        super.setSelected(selected, animated: animated)
    }
    

    
    
    // MARK: - 워밍 옵션

    
    @IBAction func heatButtonTapped(_ sender: UIButton) {
        
        delegate?.heatButtonTapped(in: self)
    }
    
    
    @IBAction func notHeatButtonTapped(_ sender: UIButton) {
        
        delegate?.notHeatButtonTapped(in: self)
    }
    
}
