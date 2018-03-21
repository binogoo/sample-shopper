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
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
    
        wageText.inputAccessoryView = calculateButton
        priceText.inputAccessoryView = calculateButton
        
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    
    }
    
    @objc func calculate(){
        if let wageText = wageText.text, let priceText = priceText.text{
            if let wage = Double(wageText), let price = Double(priceText){
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                view.endEditing(true)
            }
        }
    }

    @IBAction func clearCalculator(_ sender: Any) {
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageText.text = ""
        priceText.text = ""
        
    }
}

