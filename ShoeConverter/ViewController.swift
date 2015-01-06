//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Belinda Heliot on 9/26/14.
//  Copyright (c) 2014 Belinda Heliot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        mensConvertedShoeSizeLabel.hidden = false
        mensShoeSizeTextField.resignFirstResponder()
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        
        mensConvertedShoeSizeLabel.text =
        "\(sizeFromTextField + conversionConstant)" + " in European shoe size"
    }
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        womensConvertedShoeSizeLabel.hidden = false
        womensShoeSizeTextField.resignFirstResponder()
        
        let womensSizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let womensConversionConstant = 30.5
        
        womensConvertedShoeSizeLabel.text = "\(womensSizeFromTextField + womensConversionConstant)" + " in European Shoe Size"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

