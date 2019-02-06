//
//  wage.swift
//  window-shopper
//
//  Created by Mrwan Mohsen on 2/4/19.
//  Copyright © 2019 Mrwan Mohsen. All rights reserved.
//

import Foundation
class Wage {
    class func getHour(forWage wage: Double, adnPrice price: Double) -> Int {
       // return Int(round(price/wage))
        return Int(ceil(price/wage))
    }
}
