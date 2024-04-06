//
//  PaymentTableViewCell.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/6/24.
//

import UIKit

class PaymentTableViewCell: UITableViewCell {

    @IBOutlet weak var cartNameLabel: UILabel!
    @IBOutlet weak var cartCount: UILabel!
    @IBOutlet weak var cartPrice: UILabel!
    @IBOutlet weak var cartDetailLabel: UILabel!
    @IBOutlet weak var cartImage: UIImageView!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)
    }
    
    
}
