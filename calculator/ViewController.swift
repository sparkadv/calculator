//
//  ViewController.swift
//  calculator
//
//  Created by Kuzey on 15.05.2018.
//  Copyright © 2018 Kuzey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var alertLabel: UILabel!
    var result = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = ""
        alertLabel.text = ""
    
    }

    @IBAction func funcToplama(_ sender: Any) {
        if let firstNumber = Int(textField1.text!), let secondNumber = Int(textField2.text!){
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
                alertLabel.text = ""
        }
        else {
            alertLabel.text = "Lütfen Rakam Giriniz!"
            resultLabel.text = ""
        }
    }
    
    @IBAction func funcCarpma(_ sender: Any) {
        if let firstNumber = Int(textField1.text!), let secondNumber = Int(textField2.text!){
            result = firstNumber * secondNumber
            resultLabel.text = String(result)
            alertLabel.text = ""
        }
        else {
            alertLabel.text = "Lütfen Rakam Giriniz!"
            resultLabel.text = ""
        }
        
    }
    
}

