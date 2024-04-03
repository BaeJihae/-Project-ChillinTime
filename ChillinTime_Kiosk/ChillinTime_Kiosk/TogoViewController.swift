//
//  TogoViewController.swift
//  ChillinTime_Kiosk
//
//  Created by A Hyeon on 4/3/24.
//

import UIKit

class TogoViewController: UIViewController {

    
    @IBOutlet weak var togo: UIButton!
    @IBOutlet weak var here: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func togo(_ sender: Any) {
        let vcName = self.storyboard?.instantiateViewController(withIdentifier: "NextPageViewController")
                vcName?.modalPresentationStyle = .fullScreen //전체화면으로 보이게 설정
                vcName?.modalTransitionStyle = .crossDissolve //전환 애니메이션 설정
                self.present(vcName!, animated: true, completion: nil)
    }
    
    @IBAction func here(_ sender: Any) {
        let vcName = self.storyboard?.instantiateViewController(withIdentifier: "NextPageViewController")
                vcName?.modalPresentationStyle = .fullScreen //전체화면으로 보이게 설정
                vcName?.modalTransitionStyle = .crossDissolve //전환 애니메이션 설정
                self.present(vcName!, animated: true, completion: nil)
    }
}
