//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    var percentVal = 0.0
    
    var total = 0.0
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        var value = sender.currentTitle!.dropLast()
        value.replaceSubrange(...value.startIndex, with: "1")
        
        percentVal = Double(value)! / 100
       
        billTextField.endEditing(true)
    }
 
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = "\(Int(sender.value))"
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        total = percentVal * Double(splitNumberLabel.text!)! * Double(billTextField.text!)!
   
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "resultsViewSegue" {
              let destinationVC = segue.destination as! ResultsViewController
            destinationVC.resultsValue = String(total)
          }
    }
    
    
    
    
    
    

    
    
}

