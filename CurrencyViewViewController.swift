//
//  CurrencyViewViewController.swift
//  Assignment5
//
//  Created by user230914 on 2/18/23.
//

import UIKit

class CurrencyViewViewController: UIViewController {
    var usdAmount: String = ""
    var eurAmount:String = ""
    var audAmount: String = ""
    var chfAmount: String = ""
    var yuanAmount: String = ""
    //var usdStatus: Bool = 0
    var eurStatus: Bool = false
    var audStatus: Bool = false
    var chfStatus: Bool = false
    var yuanStatus: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountUSD.text = "Amount in USD \(usdAmount)"
        eurLabel.text = eurAmount
        eurLabel.isHidden = !eurStatus
        eurTitle.isHidden = !eurStatus
        audLabel.text = audAmount
        audLabel.isHidden = !audStatus
        audTitle.isHidden = !audStatus
        yuanLabel.text = yuanAmount
        yuanLabel.isHidden = !yuanStatus
        yuanTitle.isHidden = !yuanStatus
        chfLabel.text = chfAmount
        chfLabel.isHidden = !chfStatus
        chfTitle.isHidden = !chfStatus
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var audLabel: UILabel!
    
    @IBOutlet weak var amountUSD: UILabel!
    
    @IBOutlet weak var chfLabel: UILabel!
    
    @IBOutlet weak var yuanLabel: UILabel!
    
    @IBOutlet weak var eurLabel: UILabel!
    
    @IBOutlet weak var eurTitle: UILabel!
    
    @IBOutlet weak var audTitle: UILabel!
    
    @IBOutlet weak var yuanTitle: UILabel!
    @IBOutlet weak var chfTitle: UILabel!
    
    
    /*
     @IBOutlet weak var audLabel: UILabel!
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
