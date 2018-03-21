//
//  ViewController.swift
//  sample-shopper
//
//  Created by Pooya on 12/26/1396 AP.
//  Copyright © 1396 Binogoo. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageText: customTextField!
    @IBOutlet weak var priceText: customTextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
    
        wageText.inputAccessoryView = calculateButton
        priceText.inputAccessoryView = calculateButton
        
    
    }
    
    @objc func calculate(){
        print("I got here...!ß")
    }

}

