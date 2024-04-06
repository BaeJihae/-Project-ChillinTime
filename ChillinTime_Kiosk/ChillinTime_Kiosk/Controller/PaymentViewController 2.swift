//
//  PaymentViewController.swift
//  ChillinTime_Kiosk
//
//  Created by 배지해 on 4/6/24.
//

import UIKit

class PaymentViewController: UIViewController {

    
    @IBOutlet weak var paymentBackgroundView: UIView!
    @IBOutlet weak var paymentTableView: UITableView!
    @IBOutlet weak var paymentCartNum: UILabel!
    @IBOutlet weak var paymentCartPrice: UILabel!
    @IBOutlet weak var paymentTableViewBackground: UIView!
    @IBOutlet weak var cardPaymentButton: UIButton!
    @IBOutlet weak var kakaoPayButton: UIButton!
    @IBOutlet weak var naverPayButton: UIButton!
    @IBOutlet weak var applePayButton: UIButton!
    @IBOutlet weak var samsungPayButton: UIButton!
    @IBOutlet weak var togoDiscountLabel: UILabel!
    @IBOutlet weak var togoDiscountPriceLabel: UILabel!
    
    
    var cartDataManager = CartDataManager()
    var payment: String?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setView()
        
        setTableView()
        
        setButtonUI()
        
        setNumberOfLines()
        
        setCartLabel()
        
        registerXib()
        
        setTableViewBackgroundView()
    }
    
    
    // Xib setting
    private func registerXib() {
        
        let nibName = UINib(nibName: "PaymentTableViewCell",
                            bundle: nil)
        paymentTableView.register(nibName, forCellReuseIdentifier: "PaymentTableViewCell")
    }
    
    
    // 얼럿창 띄우기
    func makeNoticeAlert(message: String) {
        
        let errorAlert = UIAlertController(title: "Notice", message: message, preferredStyle: .alert)
        
        let okayButton = UIAlertAction(title: "확인", style: .default)
        
        errorAlert.addAction(okayButton)
        
        self.present(errorAlert, animated: true)
    }
    
    
    func setBorderLine(button: UIButton) {
        
        // 메뉴 cell 테두리 설정
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1.0).cgColor
        button.backgroundColor = .clear
    }
    
    
    func setTableViewBackgroundView() {
    
        paymentTableViewBackground.layer.cornerRadius = 20
        paymentTableViewBackground.clipsToBounds = true
        
        paymentTableViewBackground.layer.borderWidth = 1
        paymentTableViewBackground.layer.borderColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1.0).cgColor
        paymentTableViewBackground.layer.masksToBounds = false
        
        paymentTableViewBackground.backgroundColor = .clear
    }
    
    
    func setView() {
        paymentBackgroundView.layer.cornerRadius = 20
        paymentBackgroundView.clipsToBounds = true
    }
    
    
    
    // MARK: - 카트 라벨 설정
    
    func setNumberOfLines() {
        
        paymentCartNum.numberOfLines = 1
        paymentCartNum.adjustsFontSizeToFitWidth = true

        paymentCartPrice.numberOfLines = 1
        paymentCartPrice.adjustsFontSizeToFitWidth = true
    }
    
    
    // cart label 설정
    func setCartLabel() {
        
        let isTogo = cartDataManager.getIsTogo()
        
        if !isTogo {
            togoDiscountLabel.isHidden = true
            togoDiscountPriceLabel.isHidden = true
        }
        
        let cartNum: Int = cartDataManager.countCartData()
        let totalPrice: Int = cartDataManager.countTotal(isTogo)
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        let totalPriceResult = numberFormatter.string(from: NSNumber(value:totalPrice))!
    
        paymentCartNum.text = "\(cartNum)개"
        paymentCartPrice.text = "\(totalPriceResult)원"
        
        highlightNumbers(inLabel: paymentCartNum)
        highlightNumbers(inLabel: paymentCartPrice)
    }
    
    
    // cart에 담긴 총 합과 cart에 담긴 총 개수 글자 하이라이트 구현
    func highlightNumbers(inLabel label: UILabel) {
        
        guard let text = label.text else { return }
        let attributedText = NSMutableAttributedString(string: text)
        
        // 문자열 내 숫자부분 색상 및 볼드처리
        for (index, character) in text.enumerated() {
            
            if character.isNumber || character == ","  {
                
                let range = NSRange(location: index,
                                    length: 1)
                
                attributedText.addAttribute(.foregroundColor,
                                            value: UIColor.red,
                                            range: range)
                
                attributedText.addAttribute(.font,
                                            value: UIFont.systemFont(ofSize: 16, weight: .bold),
                                            range: range)
            }
        }
        
        label.attributedText = attributedText
    }
    
    
    
    
    // MARK: - 버튼 / view 배경 설정
    
    func setButtonUI() {
        
        setBorderLine(button: cardPaymentButton)
        setBorderLine(button: kakaoPayButton)
        setBorderLine(button: naverPayButton)
        setBorderLine(button: applePayButton)
        setBorderLine(button: samsungPayButton)
    }
    
    func setBackgroundColor(_ isSelected: Bool) -> UIColor {
        if isSelected {
            return UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 0.3)
        }else {
            return UIColor.clear
        }
    }
    
    func setButtonImage() {
        cardPaymentButton.backgroundColor = setBackgroundColor(cardPaymentButton.isSelected)
        kakaoPayButton.backgroundColor = setBackgroundColor(kakaoPayButton.isSelected)
        naverPayButton.backgroundColor = setBackgroundColor(naverPayButton.isSelected)
        applePayButton.backgroundColor = setBackgroundColor(applePayButton.isSelected)
        samsungPayButton.backgroundColor = setBackgroundColor(samsungPayButton.isSelected)
    }
    
    
    
    // MARK: - how to Payment
    
    @IBAction func cardPaymentTapped(_ sender: UIButton) {
        
        payment = "신용 * 체크 카드"
        
        cardPaymentButton.isSelected = true
        kakaoPayButton.isSelected = false
        naverPayButton.isSelected = false
        applePayButton.isSelected = false
        samsungPayButton.isSelected = false
        
        setButtonImage()
    }
    
    @IBAction func kakaoPayTapped(_ sender: UIButton) {
        
        payment = "카카오 페이"
        
        cardPaymentButton.isSelected = false
        kakaoPayButton.isSelected = true
        naverPayButton.isSelected = false
        applePayButton.isSelected = false
        samsungPayButton.isSelected = false
        
        setButtonImage()
    }
    
    
    @IBAction func naverPayTapped(_ sender: UIButton) {
        
        payment = "네이버 페이"
        
        cardPaymentButton.isSelected = false
        kakaoPayButton.isSelected = false
        naverPayButton.isSelected = true
        applePayButton.isSelected = false
        samsungPayButton.isSelected = false
        
        setButtonImage()
    }
    
    
    @IBAction func applePayTapped(_ sender: UIButton) {
        
        payment = "애플 페이"
        
        cardPaymentButton.isSelected = false
        kakaoPayButton.isSelected = false
        naverPayButton.isSelected = false
        applePayButton.isSelected = true
        samsungPayButton.isSelected = false
        
        setButtonImage()
    }
    
    
    @IBAction func samsungPayTapped(_ sender: UIButton) {
        
        payment = "삼성 페이"
        
        cardPaymentButton.isSelected = false
        kakaoPayButton.isSelected = false
        naverPayButton.isSelected = false
        applePayButton.isSelected = false
        samsungPayButton.isSelected = true
        
        setButtonImage()
    }
    
    
    
    
    // MARK: - Home Button

    @IBAction func paymentHomebuttonTapped(_ sender: UIButton) {
        
        self.cartDataManager.removeAllData()
        
        if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
               window.rootViewController?.dismiss(animated: true, completion: nil)
        }
    }
    
    
    
    
    // MARK: - Back Button
    @IBAction func paymentBackbuttonTapped(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
    
    
    
    // MARK: - Payment Button
    
    @IBAction func paymentButtonTapped(_ sender: UIButton) {
        
        if payment != nil {
            let alertControl = UIAlertController(title: "결제하시겠습니까?", message: "", preferredStyle: .alert)
            
            let cancelButton = UIAlertAction(title: "취소", style: .default, handler: nil)
            alertControl.addAction(cancelButton)
            
            let confirmButton = UIAlertAction(title: "확인", style: .default) { _ in
                
                guard let payment = self.payment else { return }
                
                let peymentAlert = UIAlertController(title: "결제", message: "\(payment) 결제창으로 이동중입니다.", preferredStyle: .alert)
                
                let okayButton = UIAlertAction(title: "확인", style: .default)
                
                peymentAlert.addAction(okayButton)
                
                self.present(peymentAlert, animated: true)
                
                self.cartDataManager.removeAllData()
                
            }
            
            alertControl.addAction(confirmButton)
            
            self.present(alertControl, animated: true, completion: nil)
        }else {
            makeNoticeAlert(message: "결제 방법을 선택하세요.")
        }
    }
    
    
}




// MARK: - Payment TableView 설정

extension PaymentViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func setTableView() {
        
        paymentTableView.delegate = self
        paymentTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cartDataManager.getCartData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cartData: [CartData] = cartDataManager.getCartData()
        let someCartData = cartData[indexPath.row]
        
        guard let cell = paymentTableView.dequeueReusableCell(withIdentifier: "PaymentTableViewCell", for: indexPath) as? PaymentTableViewCell else {
            return UITableViewCell()
        }
        
        // cartMenu 이름 설정
        switch someCartData.hotIceOption {
        case .hot :
            cell.cartNameLabel.text = "핫 " + "\(someCartData.cartName)"
        case .ice :
            cell.cartNameLabel.text = "아이스 " + "\(someCartData.cartName)"
        case .none:
            cell.cartNameLabel.text = "\(someCartData.cartName)"
        }
        
        // cart에 담긴 menu 개수 설정
        cell.cartCount.text = "\(someCartData.cartNum)"
        
        // cart에 담긴 해당 menu의 가격 설정
        
        let cartPriceInt = someCartData.cartNum * someCartData.cartPrice
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        let totalPriceResult = numberFormatter.string(from: NSNumber(value:cartPriceInt))!
        cell.cartPrice.text = "\(totalPriceResult)" + "원"
        
        // cart에 담긴 해당 menu의 세부 설정
        switch someCartData.category {
        
        case .coffee, .tea :
            if someCartData.hotIceOption == .ice {
                guard let iceAmount = someCartData.iceAmountOption else { return UITableViewCell() }
                cell.cartDetailLabel.text = "\(iceAmount.rawValue)"
            }else {
                cell.cartImage.isHidden = true
                cell.cartDetailLabel.text = ""
            }
            
        case .ade, .smoothie :
            guard let iceAmount = someCartData.iceAmountOption,
                  let sugarLevel = someCartData.sugarLevelOption else { return UITableViewCell() }
            
            cell.cartDetailLabel.text = "\(iceAmount.rawValue), \(sugarLevel.rawValue)"

        case .dessert :
            guard let warming = someCartData.warmingOption else { return UITableViewCell() }
            
            cell.cartDetailLabel.text = "\(warming.rawValue)"
        
        }
        
        // cell 선택 안되도록 설정
        cell.selectionStyle = .none
        
        return cell
    }
}
