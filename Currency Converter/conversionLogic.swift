

//  ConversionLogic.swift

//  Currency Converter

//

//  Created by rahul v on 6/26/26.

//

  

import UIKit

struct conversionLogic {

//var dollarConversion : Int = 0
var inr = 94.32
var cad = 1.42
var eur = 0.88
var nzd = 1.77

    mutating func dollarRounding (_ userInput: String) -> Int? {
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
