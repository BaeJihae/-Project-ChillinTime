//
//  Option2TableViewCell.swift
//  ChillinTime_Kiosk
//
//  Created by 민웅킴 on 4/4/24.
//

import UIKit

class DessertOptionCell: UITableViewCell {
    
    weak var delegate: OptionCellDelegate?
    
    @IBOutlet weak var heatLabel: UIView!
    @IBOutlet weak var heatBTN: UIButton!
    @IBOutlet weak var notHeatBTN: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    

    
    //  데우기/그대로
    @IBAction func heatButtonTapped(_ sender: UIButton) {
        delegate?.heatButtonTapped(in: self)
    }
    
    @IBAction func notHeatButtonTapped(_ sender: UIButton) {
        delegate?.notHeatButtonTapped(in: self)
    }
    
}
