//
//  Wage.swift
//  sample-shopper
//
//  Created by Pooya on 1/1/1397 AP.
//  Copyright © 1397 Binogoo. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage:Double, andPrice price:Double) -> Int {
        return Int(ceil(price/wage))
    }
}

