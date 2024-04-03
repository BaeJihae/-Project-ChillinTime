//
//  ViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/3/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bestBtn: UIButton!
    @IBOutlet weak var coffeeBtn: UIButton!
    @IBOutlet weak var smoothieBtn: UIButton!
    @IBOutlet weak var adeBtn: UIButton!
    @IBOutlet weak var teaBtn: UIButton!
    @IBOutlet weak var dessertBtn: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var menuCollectionView: UICollectionView!
    
    
    // 카테고리 버튼
    lazy var categories = [bestBtn, coffeeBtn, smoothieBtn, adeBtn, teaBtn, dessertBtn]
    
    
    // 메뉴 데이터 ( 베스트 메뉴판으로 초기화 )
    var menuData: [MenuData] = MenuData.bestMenu
    var cartDataManager = CartDataManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackColor()
        setCollectionView()
    }

    
    // 버튼 선택 시 category 변경 ( 카테고리 버튼 연결 )
    @IBAction func reloadBeverages(_ sender: UIButton) {
        
        changeBackColor(button: sender)
        
        if let buttonName = sender.titleLabel?.text {
            
            // 메뉴 데이터 변경
            changeMenuData(buttonName)
        }
        
        menuCollectionView.reloadData()
    }

    
    // 처음 화면 로드 시 버튼 컬러 변경
    func setBackColor() {
        changeBackColor(button: bestBtn)
    }
    
    
    // 배경 컬러 변경 구현
    private func changeBackColor(button: UIButton) {
        let maskPath = UIBezierPath(roundedRect: button.bounds,
                                    byRoundingCorners: [.topLeft, .topRight],
                                    cornerRadii: CGSize(width: 10, height: 10))
        
        
        // 메뉴 탭 바 버튼 둥글게
        let maskLayer = CAShapeLayer()
        maskLayer.frame = button.bounds
        maskLayer.path = maskPath.cgPath
        button.layer.mask = maskLayer
        
        
        // 버튼의 배경 색상과 컬러 변경
        categories.forEach {
            $0?.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1)
            $0?.tintColor = .white
            
        }
        
        
        // 버튼의 배경 색상과 컬러 설정
        button.backgroundColor = .white
        button.tintColor = UIColor(red: 43/255, green: 167/255, blue: 255/255, alpha: 1)
        
    }
    
    
    // 버튼 이름에 따른 cartData값 변경 함수
    func changeMenuData(_ buttonName: String) {
        
        switch buttonName {
        case "베스트" :
            menuData = MenuData.bestMenu
        case "커피" :
            menuData = MenuData.coffeeMenu
        case "스무디" :
            menuData = MenuData.smoothieMenu
        case "에이드" :
            menuData = MenuData.adeMenu
        case "차" :
            menuData = MenuData.teaMenu
        case "디저트" :
            menuData = MenuData.dessertMenu
        default:
            menuData = MenuData.bestMenu
        }
        
        
        
        
    }
    
    
    
    
}



extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    // collectionView setting
    func setCollectionView() {
        menuCollectionView.dataSource = self
        menuCollectionView.delegate = self
    }
    
    
    // collectionView cell 개수
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return menuData.count
    }
    
    
    // collectionView와 cell 연결 / menuData 전달
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as? MenuListCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.setConfigue(menuData[indexPath.row])
        
        return cell
    }

    
    // collectionView 선택시 셀 배경색 변경 / cart에 추가
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        cartDataManager.addCartData(name: menuData[indexPath.row].name)
    }
    
    
    // collectionView의 view 사이즈 설정
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 170, height: 170)
    }
    
    
    // collectionView의 행 간격 설정
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 17
    }
    
    
    
}
