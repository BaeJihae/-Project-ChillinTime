//
//  ModalViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 이유진 on 4/4/24.
//

import UIKit

class ModalViewController: UIViewController {
    
    
    @IBOutlet weak var customModalView: UIView!
    @IBOutlet weak var datailBackgroundView: UIView!
    @IBOutlet weak var detailMenuImageView: UIImageView!
    @IBOutlet weak var detailMenuLabelView: UILabel!
    @IBOutlet weak var detailCartCountLabel: UILabel!
    @IBOutlet weak var detailMinusButton: UIButton!
    @IBOutlet weak var detailPlusButton: UIButton!
    @IBOutlet weak var detailOptionTableView: UITableView!
    @IBOutlet weak var detailcancelButton: UIButton!
    @IBOutlet weak var detailInCartButton: UIButton!
    @IBOutlet weak var detailTableView: UITableView!
    
    
    var cartDataManager = CartDataManager()
    
    var orderAmount = 1
    
    var menuData: MenuData?
    var hotIceOption: hotIceOption?
    var iceAmountOption: iceAmountOption?
    var sugarLevelOption: sugarLevelOption?
    var warmingOption: warmingOption?
    
    var AddCartButtonAction: (() -> Void)?
    
    
    // cell의 옵션 설정
    enum CellOption {
        case Coffee
        case Ade
        case Dessert
    }
    
    
    // 옵션 선택
    var currentOption: CellOption?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setting()
        
        setCustomModalView()
        
        setLabel()
        
        setViewLayer()
        
        setTableView()
        
        registerXib()
        
        setCurrentOption()
    }
    
    
    
    
    // MARK: - setting
    
    func setting() {
        
        guard let menuData = menuData else { return }
        
        if let menuImage = menuData.image {
            print(menuImage)
            detailMenuImageView.image = menuImage
        }
        
        detailMenuLabelView.text = menuData.name
        
        detailCartCountLabel.text = "\(orderAmount)"
    }
    
    
    func setCustomModalView(){
        
        view.backgroundColor = UIColor.clear
        
        customModalView.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1.0).withAlphaComponent(1)
        customModalView.layer.cornerRadius = 10
        
    }
    
    
    func setViewLayer() {
        datailBackgroundView.layer.cornerRadius = 12
        datailBackgroundView.clipsToBounds = true
    }
    
    
    // Label setting
    func setLabel() {
        
        detailMenuLabelView?.numberOfLines = 1
        detailMenuLabelView?.adjustsFontSizeToFitWidth = true
        
        detailCartCountLabel?.numberOfLines = 1
        detailCartCountLabel?.adjustsFontSizeToFitWidth = true
    }
    
    
    func makeNoticeAlert(message: String) {
        
        let errorAlert = UIAlertController(title: "Notice", message: message, preferredStyle: .alert)
        
        let okayButton = UIAlertAction(title: "확인", style: .default)
        
        errorAlert.addAction(okayButton)
        
        self.present(errorAlert, animated: true)
    }
    
    
    
    
    // MARK: - MinusButton
    
    @IBAction func detailMinusButtonTapped(_ sender: UIButton) {
        
        if orderAmount >= 2 {
            orderAmount -= 1
        } else {
            makeNoticeAlert(message: "최소 수량입니다.")
        }
        
        detailCartCountLabel.text = "\(orderAmount)"
    }
    
    
    
    
    // MARK: - PlusButton
    
    @IBAction func detailPlusButtonTapped(_ sender: UIButton) {
        
        orderAmount += 1
        
        detailCartCountLabel.text = "\(orderAmount)"
    }
    
    
    
    
    // MARK: - CancelButton

    @IBAction func detailCancelButtonTapped(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
    
    
    
    // MARK: - InCartButton
    
    @IBAction func detailInCartButtonTapped(_ sender: UIButton) {
        
        guard let menuData = menuData else { return }
        
        switch menuData.category {
        case .coffee, .tea :
            
            if ( hotIceOption == .ice && iceAmountOption == nil ) || hotIceOption == nil{
                makeNoticeAlert(message: "옵션을 선택하지 않았습니다.")
            } else {
                if !cartDataManager.addCartData(name: menuData.name, count: orderAmount, price: menuData.price, category: menuData.category, hotIceOption: hotIceOption, iceAmountOption: iceAmountOption, warmingOption: warmingOption, sugarLevelOption: sugarLevelOption) {
                    makeNoticeAlert(message: "이미 선택한 메뉴입니다.")
                }
                
                dismiss(animated: true){
                    self.AddCartButtonAction?()
                    print(self.cartDataManager.getCartData())
                }
            }
        case .ade, .smoothie :
            
            if iceAmountOption == nil || sugarLevelOption == nil {
                makeNoticeAlert(message: "옵션을 선택하지 않았습니다.")
            } else {
                if !cartDataManager.addCartData(name: menuData.name, count: orderAmount, price: menuData.price, category: menuData.category, hotIceOption: hotIceOption, iceAmountOption: iceAmountOption, warmingOption: warmingOption, sugarLevelOption: sugarLevelOption) {
                    makeNoticeAlert(message: "이미 선택한 메뉴입니다.")
                }
                
                dismiss(animated: true){
                    self.AddCartButtonAction?()
                    print(self.cartDataManager.getCartData())
                }
            }
        case .dessert :
            if warmingOption == nil {
                makeNoticeAlert(message: "옵션을 선택하지 않았습니다.")
            } else {
                if !cartDataManager.addCartData(name: menuData.name, count: orderAmount, price: menuData.price, category: menuData.category, hotIceOption: hotIceOption, iceAmountOption: iceAmountOption, warmingOption: warmingOption, sugarLevelOption: sugarLevelOption) {
                    makeNoticeAlert(message: "이미 선택한 메뉴입니다.")
                }
                
                dismiss(animated: true){
                    self.AddCartButtonAction?()
                    print(self.cartDataManager.getCartData())
                }
            }
            
        }
        
    }
}


// MARK: - Detail Table View

extension ModalViewController: UITableViewDelegate, UITableViewDataSource, OptionCellDelegate {
    
    
    // 테이블 뷰 setting
    func setTableView() {
        
        detailTableView.dataSource = self
        detailTableView.delegate = self
    }
    
    
    // 카테고리에 따른 옵션 선택
    func setCurrentOption() {
        
        guard let menuData = menuData else { return }
        
        let category = menuData.category
        
        switch category {
        case .coffee, .tea :
            currentOption = .Coffee
        case .ade, .smoothie :
            currentOption = .Ade
        case .dessert :
            currentOption = .Dessert
        }
        
        detailTableView.reloadData()
    }
    
    
    // Xib setting
    private func registerXib() {
        
        let nibName = UINib(nibName: "CoffeeOptionCell",
                            bundle: nil)
        detailTableView.register(nibName, forCellReuseIdentifier: "CoffeeOptionCell")
        
        let nibName2 = UINib(nibName: "DessertOptionCell",
                             bundle: nil)
        detailTableView.register(nibName2, forCellReuseIdentifier: "DessertOptionCell")
        
        let nibName3 = UINib(nibName: "AdeOptionCell",
                             bundle: nil)
        detailTableView.register(nibName3, forCellReuseIdentifier: "AdeOptionCell")
    }
    
    
    // 버튼을 제외한 선택 및 스크롤 불가
    func disableScrolling() {
        
        detailTableView.isScrollEnabled = false
    }
    
    
    // 테이블 뷰 셀 개수
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    
    // 테이블 뷰 연결
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let currentOption = currentOption {
            
            switch currentOption {
                
            case .Coffee:
                let cell = tableView.dequeueReusableCell(withIdentifier:"CoffeeOptionCell",
                                                         for: indexPath) as! CoffeeOptionCell
                
                // 셀의 델리게이트 설정
                cell.delegate = self
                return cell
                
            case .Dessert:
                let cell = tableView.dequeueReusableCell(withIdentifier: "DessertOptionCell",
                                                         for: indexPath) as! DessertOptionCell
                
                // 셀의 델리게이트 설정
                cell.delegate = self
                return cell
                
            case .Ade:
                let cell = tableView.dequeueReusableCell(withIdentifier: "AdeOptionCell",
                                                         for: indexPath) as! AdeOptionCell
                
                // 셀의 델리게이트 설정
                cell.delegate = self
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    
    // 온도 - 핫 버튼
    func hotButtonTapped(in cell: UITableViewCell) {
        
        if let coffeeCell = cell as? CoffeeOptionCell {
            
            coffeeCell.hotBtn.isSelected = true
            coffeeCell.iceBtn.isSelected = false
            
            coffeeCell.lessIce.isEnabled = false
            coffeeCell.moreIce.isEnabled = false
            coffeeCell.noneIce.isEnabled = false
            
            hotIceOption = .hot
        }
    }
    
    
    // 온도 - 아이스 버튼
    func iceButtonTapped(in cell: UITableViewCell) {
        
        if let coffeeCell = cell as? CoffeeOptionCell {
            
            coffeeCell.hotBtn.isSelected = false
            coffeeCell.iceBtn.isSelected = true
            
            coffeeCell.lessIce.isEnabled = true
            coffeeCell.moreIce.isEnabled = true
            coffeeCell.noneIce.isEnabled = true
            
            hotIceOption = .ice
        }
    }
    
    
    // 얼음 - 없음 버튼
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
        
        iceAmountOption = .noneIce
    }
    
    
    // 얼음 - 적게 버튼
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
        
        iceAmountOption = .lessIce
    }
    
    
    // 얼음 - 많이 버튼
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
        
        iceAmountOption = .muchIce
    }
    
    
    // 워밍 - 데움 버튼
    func heatButtonTapped(in cell: UITableViewCell) {
        
        if let dessertCell = cell as? DessertOptionCell {
            
            dessertCell.heatBTN.isSelected = true
            dessertCell.notHeatBTN.isSelected = false
        }
        
        warmingOption = .warming
    }
    
    
    // 워밍 - 안 데움 버튼
    func notHeatButtonTapped(in cell: UITableViewCell) {
        
        if let dessertCell = cell as? DessertOptionCell {
            
            dessertCell.heatBTN.isSelected = false
            dessertCell.notHeatBTN.isSelected = true
        }
        
        warmingOption = .unwarming
    }
    
    
    // 당도 - 덜 달게 버튼
    func lessSugarButtonTapped(in cell: UITableViewCell) {
        
        if let adeCell = cell as? AdeOptionCell {
            
            adeCell.lessSugar.isSelected = true
            adeCell.noneSugar.isSelected = false
            adeCell.moreSugar.isSelected = false
        }
        
        sugarLevelOption = .lessSweet
    }
    
    
    // 당도 - 보통 버튼
    func noneSugarButtonTapped(in cell: UITableViewCell) {
        
        if let adeCell = cell as? AdeOptionCell {
            
            adeCell.lessSugar.isSelected = false
            adeCell.noneSugar.isSelected = true
            adeCell.moreSugar.isSelected = false
        }
        
        sugarLevelOption = .usually
    }
    
    
    // 당도 - 더 달게 버튼
    func moreSugarButtonTapped(in cell: UITableViewCell) {
        
        if let adeCell = cell as? AdeOptionCell {
            
            adeCell.lessSugar.isSelected = false
            adeCell.noneSugar.isSelected = false
            adeCell.moreSugar.isSelected = true
        }
        
        sugarLevelOption = .muchSweet
    }
}

