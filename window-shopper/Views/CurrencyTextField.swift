//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Mrwan Mohsen on 2/3/19.
//  Copyright © 2019 Mrwan Mohsen. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect (x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.3270199257, green: 0.3540716198, blue: 0.3933710118, alpha: 0.35)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    override func prepareForInterfaceBuilder() {
        customize()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customize()
    }
    func customize() {
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString (string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
