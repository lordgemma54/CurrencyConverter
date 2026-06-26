//
//  ViewController.swift
//  Currency Converter
//
//  Created by rahul v on 6/26/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dollarEntry: UITextField!
    var roundDollars : Int = 0
    
    @IBOutlet weak var errorLabel: UILabel!
    
    var switch_1_on = true
    var switch_2_on = true
    var switch_3_on = true
    var switch_4_on = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "toNavigation") {
            let navigation = segue.destination as! NavigationViewController
            navigation.currency1 = "hello everyone"
        }
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
        errorLabel.isHidden = true
        
        guard let userInput = dollarEntry.text, !userInput.isEmpty else {
            errorLabel.text = "Please enter a dollar amount"
            errorLabel.isHidden = false
            return
        }
        
    
        if let integerInput = Int(userInput) {
            roundDollars = integerInput
            
        }else if let floatInput = Double(userInput) {
            let roundedDouble = floatInput.rounded()
            roundDollars = Int (roundedDouble)
            errorLabel.text = "Input rounded"
            errorLabel.isHidden = false
        } else {
            errorLabel.text = ("Please enter a valid dollar amount")
            errorLabel.isHidden = false
            return
        }
        
        dollarEntry.text = String(roundDollars)
        dollarEntry.resignFirstResponder()
        
        self.performSegue(withIdentifier: "toNavigation", sender: self)
        
        
    }
    
}

