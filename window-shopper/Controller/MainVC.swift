//
//  ViewController.swift
//  window-shopper
//
//  Created by Mrwan Mohsen on 2/3/19.
//  Copyright © 2019 Mrwan Mohsen. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hourLbl: UILabel!
    var name = ""
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let calcBtn = UIButton (frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hourLbl.isHidden = true
    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hourLbl.isHidden = false
                resultLbl.text = "\(Wage.getHour(forWage: wage, adnPrice: price))"
            }
        }
    }

    @IBAction func clearPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

