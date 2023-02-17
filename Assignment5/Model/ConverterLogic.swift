//
//  ConverterLogic.swift
//  Assignment5
//
//  Created by user230914 on 2/18/23.
//

import Foundation

struct ConverterLogic {
    
    
    var currency = [
        //0
        Currency(
            name: "EUR",
            cFactor: 0.93,
            active: false,
            total: "0"
        ),
        Currency(
            name: "AUD",
            cFactor: 1.45,
            active: false,
            total: "0"
            
        ),
        Currency(
            name: "Yuan",
            cFactor: 6.87,
            active: false,
            total: "0"
        ),
        Currency(
            name: "CHF",
            cFactor: 0.92,
            active: false,
            total: "0"
        ),
    ]
    
    var Switch = true
    
    var usdAmount : Float = 0
    
    mutating func setSwitch(_ switchValue: Bool,_ cNumber: Int) {
        
        if switchValue {
            currency[cNumber].active = true
        } else {
            currency[cNumber].active = false
        }
        
    }
        
    mutating func calcAmount(usd: String) {
        let  usdInt = Float(usd)
        for (index, _) in currency.enumerated() {
        //currency.forEach( index in
            if currency[index].active == true {
                currency[index].total = String(currency[index].cFactor * usdInt!)
            } else {
                currency[index].total = "0"
            }
            
        }
            
        }
        
    
    
    
    
   mutating func getTotal(index: Int) -> String{
                return currency[index].total
            }
        
    func getStatus(index: Int) -> Bool{
                    return currency[index].active
                }
}
