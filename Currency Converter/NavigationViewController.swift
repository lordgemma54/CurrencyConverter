//
//  NavigationViewController.swift
//  Currency Converter
//
//  Created by rahul v on 6/26/26.
//

import UIKit

class NavigationViewController: UIViewController {

    var currency1 = ""

    @IBOutlet weak var curLabel_1: UILabel!
    
    @IBOutlet weak var inrOutLabel: UILabel!
    
    @IBOutlet weak var cadOutLabel: UILabel!
    
    @IBOutlet weak var usdOutLabel: UILabel!
    
    @IBOutlet weak var eurOutLabel: UILabel!
    
    @IBOutlet weak var nzdOutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        curLabel_1.text = "currency coming soon"

        // Do any additional setup after loading the view.
    }
}
