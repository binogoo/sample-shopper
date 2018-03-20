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
        
        if let placeholderValue = placeholder{
            let place = NSAttributedString(string: placeholderValue,
                                           attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            
            attributedPlaceholder = place
            
        }
    }
    

}
