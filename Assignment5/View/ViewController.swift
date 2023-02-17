//
//  ViewController.swift
//  Assignment5
//
//  Created by user230914 on 2/17/23.
//

import UIKit
var converterLogic = ConverterLogic()
var usdAmount : String = ""

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usdInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usdInput.delegate = self
        
        
    }
    
  
    @IBOutlet weak var usdLabel: UILabel!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let x = string.rangeOfCharacter(from: NSCharacterSet.decimalDigits) {
            usdLabel.text = "Enter USD:"
            usdLabel.textColor = UIColor.black
            return true
        } else {
            usdLabel.text = "Invalid Input"
            usdLabel.textColor = UIColor.red
            return false
        }
    }
    
    
    @IBAction func switchChange(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn, sender.tag)
    }
    
    
    
    @IBAction func calculate(_ sender: UIButton) {
        usdAmount = usdInput.text!
        converterLogic.calcAmount(usd: usdAmount)
        self.performSegue(withIdentifier: "ToCurrencyConverter", sender: self)
    }
    
   // func getTotal( index: Int) -> String {
   //    return  converterLogic.getTotal(index: 0)
        
   // }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToCurrencyConverter" {
            let currencyNavigation = segue.destination as! CurrencyViewViewController
            currencyNavigation.usdAmount = usdAmount
            currencyNavigation.eurAmount = converterLogic.getTotal(index: 0)
            currencyNavigation.eurStatus = converterLogic.getStatus(index: 0)
            currencyNavigation.audAmount = converterLogic.getTotal(index: 1)
            currencyNavigation.audStatus = converterLogic.getStatus(index: 1)
            currencyNavigation.yuanAmount = converterLogic.getTotal(index: 2)
            currencyNavigation.yuanStatus = converterLogic.getStatus(index: 2)
            currencyNavigation.chfAmount = converterLogic.getTotal(index: 3)
            currencyNavigation.chfStatus = converterLogic.getStatus(index: 3)
        }}
}

