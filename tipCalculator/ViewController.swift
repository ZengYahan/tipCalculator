//
//  ViewController.swift
//  tip calculator tipCalculator
//
//  Created by YaHan on 2024/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var memberTextField: UITextField!
    
    @IBOutlet weak var totalTipsLable: UITextField!
    @IBOutlet weak var totalPriceLable: UITextField!
    @IBOutlet weak var averagePriceLable: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func priceCaculate(_ sender: Any) {
        if priceTextField.text == "" || tipTextField.text == "" || memberTextField.text == "" {
            totalTipsLable.text = "0"
            totalPriceLable.text = "0"
            averagePriceLable.text = "0"
        }else {
            let tip = Double(priceTextField.text!)! * Double(tipTextField.text!)! / 100
            let total = Double(priceTextField.text!)! + tip
            let share = total / Double(memberTextField.text!)!
            
            totalTipsLable.text = String(format: "%.1f" ,tip)
            totalPriceLable.text = String(format: "%.1f" ,total)
            averagePriceLable.text = String(format: "%.0f" ,share)
        }
        view.endEditing(true)
    }
    
    @IBAction func reCaculate(_ sender: Any) {
        tipTextField.text = "0"
        priceTextField.text = "0"
        memberTextField.text = "0"
        totalTipsLable.text = "0"
        totalPriceLable.text = "0"
        averagePriceLable.text = "0"
    }
}


