//
//  ViewController.swift
//  Currency Converter
//
//  Created by rahul v on 6/26/26.
//

import UIKit

class ViewController: UIViewController {

    	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func convertButtonAction(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toNavigation", sender: self)
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
    
}

