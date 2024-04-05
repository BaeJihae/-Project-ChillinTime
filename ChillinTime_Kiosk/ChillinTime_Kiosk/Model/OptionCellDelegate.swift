//
//  OptionCellDelegate.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/5/24.
//

import Foundation
import UIKit

// 버튼의 액션을 각 셀에 넘겨줄 후롯또콜
protocol OptionCellDelegate: AnyObject {
    func hotButtonTapped(in cell: UITableViewCell)
    func iceButtonTapped(in cell: UITableViewCell)
    func noneIceButtonTapped(in cell: UITableViewCell)
    func lessIceButtonTapped(in cell: UITableViewCell)
    func moreIceButtonTapped(in cell: UITableViewCell)
    func heatButtonTapped(in cell: UITableViewCell)
    func notHeatButtonTapped(in cell: UITableViewCell)
    func lessSugarButtonTapped(in cell: UITableViewCell)
    func noneSugarButtonTapped(in cell: UITableViewCell)
    func moreSugarButtonTapped(in cell: UITableViewCell)
}
