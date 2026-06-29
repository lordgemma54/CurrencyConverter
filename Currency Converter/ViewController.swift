//
//  ViewController.swift
//  Currency Converter
//
//  Created by rahul v on 6/26/26.
//

import UIKit

class ViewController: UIViewController {
    var switch_1_on = true
    var switch_2_on = true
    var switch_3_on = true
    var switch_4_on = true
    
    var totalINR : Double = 0.0
    var totalCAD : Double = 0.0
    var totalEUR : Double = 0.0
    var totalNZD : Double = 0.0
    var dollars : Int = 0
    
    @IBOutlet weak var dollarEntry: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    var converter = conversionLogic()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func curSwitch_1(_ sender: UISwitch) {
        if sender.isOn {
            switch_1_on = true
        } else {
            switch_1_on = false
        }
    }
    
    @IBAction func curSwitch_2(_ sender: UISwitch) {
        if sender.isOn {
            switch_2_on = true
        } else {
            switch_2_on = false
        }
    }
    
    @IBAction func curSwitch_3(_ sender: UISwitch) {
        if sender.isOn {
            switch_3_on = true
        } else {
            switch_3_on = false
        }
    }
    
    @IBAction func curSwitch_4(_ sender: UISwitch) {
        if sender.isOn {
            switch_4_on = true
        } else {
            switch_4_on = false
        }
    }
    

    @IBAction func convertBtn(_ sender: UIButton) {
        totalINR = 0.0
        totalCAD = 0.0
        totalEUR = 0.0
        totalNZD = 0.0
        
        errorLabel.isHidden = true
        
        guard let userInput = dollarEntry.text, !userInput.isEmpty else {
            errorLabel.text = "Please enter a dollar amount"
            errorLabel.isHidden = false
            return
        }
        
        guard let rounded = converter.dollarRounding(userInput) else {
            errorLabel.text = "Please enter a valid non-negative integer."
            errorLabel.isHidden = false
            return
        }

        dollars = rounded
//        print("dollars: \(dollars)")
        
    
        if switch_1_on {
            totalINR = converter.convertINR(dollars)
//            print(totalINR)
        }
        
        if switch_2_on {
            totalCAD = converter.convertCAD(dollars)
//            print(totalCAD)
        }
        
        if switch_3_on {
            totalEUR = converter.convertEUR(dollars)
//            print(totalEUR)
        }
        
        if switch_4_on {
            totalNZD = converter.convertNZD(dollars)
//            print(totalNZD)
        }
        
        
        dollarEntry.text = String(dollars)
        dollarEntry.resignFirstResponder()
        
        
        self.performSegue(withIdentifier: "toNavigation", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "toNavigation") {
            let navigation = segue.destination as! NavigationViewController
            navigation.usdOut = String(dollars)
            navigation.inrOut = String(format: "%.2f", totalINR)
            navigation.cadOut = String(format: "%.2f", totalCAD)
            navigation.eurOut = String(format: "%.2f", totalEUR)
            navigation.nzdOut = String(format: "%.2f", totalNZD)
        }
    }
    
}

