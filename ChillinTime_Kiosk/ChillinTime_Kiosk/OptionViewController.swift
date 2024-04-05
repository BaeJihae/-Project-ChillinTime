//
//  OptionViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 민웅킴 on 4/4/24.
//

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


//뷰 컨트롤러 안에 테이블 뷰 델리게이트, 데이터소스를 관리할 것. && 셀에 뿌려줄 프로토콜을 상속받음. 부자임.
class OptionViewController: UIViewController,
                            UITableViewDelegate,
                            UITableViewDataSource,
                            OptionCellDelegate
{
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        registerXib()
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //
    enum CellOption {
        case Coffee
        case Dessert
        case Ade
    }
    
    //
    var currentOption: CellOption = .Coffee {
        didSet {
            tableView.reloadData()
        }
    }
    
    // 버튼을 제외한 선택 및 스크롤 불가
    func disableScrolling() {
        tableView.isScrollEnabled = false
    }
    
    // 테이블뷰셀 밑줄 제거
    func removeLine() {
        tableView.separatorStyle = .none
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch currentOption {
        case .Coffee:
            let cell = tableView.dequeueReusableCell(withIdentifier:"CoffeeOptionCell", for: indexPath) as! CoffeeOptionCell
            cell.delegate = self // 셀의 델리게이트 설정
            disableScrolling()
            removeLine()
            return cell
        case .Dessert:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DessertOptionCell", for: indexPath) as! DessertOptionCell
            cell.delegate = self // 셀의 델리게이트 설정
            disableScrolling()
            removeLine()
            return cell
        case .Ade:
            let cell = tableView.dequeueReusableCell(withIdentifier: "AdeOptionCell", for: indexPath) as! AdeOptionCell
            cell.delegate = self // 셀의 델리게이트 설정
            disableScrolling()
            removeLine()
            return cell
        }
    }
    
    
    // 선택한 옵션에 따라 변경
    func changeOption(to option: CellOption) {
        currentOption = option
        
    }
    
    
    //
    func hotButtonTapped(in cell: UITableViewCell) {
        
        if let coffeeCell = cell as? CoffeeOptionCell {
            
            coffeeCell.hotBTN.isSelected = true
            coffeeCell.iceBTN.isSelected = false
            
        }
    }
    //
    func iceButtonTapped(in cell: UITableViewCell) {
        if let coffeeCell = cell as? CoffeeOptionCell {
            
            coffeeCell.hotBTN.isSelected = false
            coffeeCell.iceBTN.isSelected = true
            
        }
    }
    
    
    
    
    //
    func noneIceButtonTapped(in cell: UITableViewCell) {
        if let coffeeCell = cell as? CoffeeOptionCell {
            
            coffeeCell.noneIce.isSelected = true
            coffeeCell.lessIce.isSelected = false
            coffeeCell.moreIce.isSelected = false
            
        } else if let adeCell = cell as? AdeOptionCell {
            adeCell.noneIce.isSelected = true
            adeCell.lessIce.isSelected = false
            adeCell.moreIce.isSelected = false
        }
    }
    //
    func lessIceButtonTapped(in cell: UITableViewCell) {
        if let coffeeCell = cell as? CoffeeOptionCell {
            
            coffeeCell.noneIce.isSelected = false
            coffeeCell.lessIce.isSelected = true
            coffeeCell.moreIce.isSelected = false
            
        } else if let adeCell = cell as? AdeOptionCell {
            adeCell.noneIce.isSelected = false
            adeCell.lessIce.isSelected = true
            adeCell.moreIce.isSelected = false
        }
    }
    //
    func moreIceButtonTapped(in cell: UITableViewCell) {
        if let coffeeCell = cell as? CoffeeOptionCell {
            
            coffeeCell.noneIce.isSelected = false
            coffeeCell.lessIce.isSelected = false
            coffeeCell.moreIce.isSelected = true
            
        } else if let adeCell = cell as? AdeOptionCell {
            adeCell.noneIce.isSelected = false
            adeCell.lessIce.isSelected = false
            adeCell.moreIce.isSelected = true
        }
    }
     
    
    
    //
    func heatButtonTapped(in cell: UITableViewCell) {
        if let dessertCell = cell as? DessertOptionCell {
            dessertCell.heatBTN.isSelected = true
            dessertCell.notHeatBTN.isSelected = false
        }
    }
    //
    func notHeatButtonTapped(in cell: UITableViewCell) {
        if let dessertCell = cell as? DessertOptionCell {
            dessertCell.heatBTN.isSelected = false
            dessertCell.notHeatBTN.isSelected = true
        }
    }
    
    
    
    
    
    //
    func lessSugarButtonTapped(in cell: UITableViewCell) {
        if let coffeeCell = cell as? CoffeeOptionCell {
            coffeeCell.lessSugar.isSelected = true
            coffeeCell.noneSugar.isSelected = false
            coffeeCell.moreSugar.isSelected = false
        }
    }
    //
    func noneSugarButtonTapped(in cell: UITableViewCell) {
        if let coffeeCell = cell as? CoffeeOptionCell {
            coffeeCell.lessSugar.isSelected = false
            coffeeCell.noneSugar.isSelected = true
            coffeeCell.moreSugar.isSelected = false
        }
    }
    //
    func moreSugarButtonTapped(in cell: UITableViewCell) {
        if let coffeeCell = cell as? CoffeeOptionCell {
            coffeeCell.lessSugar.isSelected = false
            coffeeCell.noneSugar.isSelected = false
            coffeeCell.moreSugar.isSelected = true
        }
    }
    
    
    
    private func registerXib() {
        let nibName = UINib(nibName: "CoffeeOptionCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "CoffeeOptionCell")
        let nibName2 = UINib(nibName: "DessertOptionCell", bundle: nil)
        tableView.register(nibName2, forCellReuseIdentifier: "DessertOptionCell")
        let nibName3 = UINib(nibName: "AdeOptionCell", bundle: nil)
        tableView.register(nibName3, forCellReuseIdentifier: "AdeOptionCell")
    }
}

