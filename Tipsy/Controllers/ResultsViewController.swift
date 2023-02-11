//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Godsheritage Adeoye on 2/6/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var resultsValue : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = resultsValue!

        // Do any additional setup after loading the view
    }
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    */

}
