//  ConversionLogic.swift
//  Currency Converter
//
//  Created by rahul v on 6/26/26.
//

  

import UIKit

struct conversionLogic {
    
    let inr = 94.32
    let cad = 1.42
    let eur = 0.88
    let nzd = 1.77
    
    func dollarRounding (_ userInput: String) -> Int? {
        if let integerInput = Int(userInput), integerInput >= 0 {
            return integerInput
        }
        if let floatInput = Double(userInput), floatInput >= 0 {
            let roundedDouble = floatInput.rounded()
            return Int(roundedDouble)
        }
        return nil
    }
    
    
    func convertINR(_ dollars : Int) -> Double {
        return Double(dollars) * inr
    }
    
    func convertCAD(_ dollars : Int) -> Double {
        return Double(dollars) * cad
    }
    
    func convertEUR(_ dollars: Int) -> Double {
        return Double(dollars) * eur
    }
    
    func convertNZD(_ dollars : Int) -> Double {
        return Double(dollars) * nzd
    }
}
