//
//  customTextField.swift
//  sample-shopper
//
//  Created by Pooya on 12/26/1396 AP.
//  Copyright © 1396 Binogoo. All rights reserved.
//

import UIKit

@IBDesignable
class customTextField: UITextField {


    override func draw(_ rect: CGRect) {
        
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: frame.size.height/2 - size/2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.6791791524)
        currencyLabel.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLabel.textAlignment = .center
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        
        addSubview(currencyLabel)
        
        
    }
    
    override func prepareForInterfaceBuilder() {
        createCustomView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        createCustomView()
        
    }
    
    func createCustomView(){
        textAlignment = .center
        layer.cornerRadius = 5.0
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        clipsToBounds = true
        
        
        if let placeholderValue = placeholder{
            let place = NSAttributedString(string: placeholderValue,
                                           attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            
            attributedPlaceholder = place
            
        }
    }
    

}
