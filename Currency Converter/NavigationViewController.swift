//
//  NavigationViewController.swift
//  Currency Converter
//
//  Created by rahul v on 6/26/26.
//

import UIKit

class NavigationViewController: UIViewController {

    var usdOut = ""
    var inrOut = ""
    var cadOut = ""
    var eurOut = ""
    var nzdOut = ""
    

    @IBOutlet weak var curLabel_1: UILabel!
    
    @IBOutlet weak var inrOutLabel: UILabel!
    
    @IBOutlet weak var cadOutLabel: UILabel!
    
    @IBOutlet weak var usdOutLabel: UILabel!
    
    @IBOutlet weak var eurOutLabel: UILabel!
    
    @IBOutlet weak var nzdOutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdOutLabel.text = "\(usdOut)"
        inrOutLabel.text = "\(inrOut)"
        cadOutLabel.text = "\(cadOut)"
        eurOutLabel.text = "\(eurOut)"
        nzdOutLabel.text = "\(nzdOut)"

        // Do any additional setup after loading the view.
    }
}
