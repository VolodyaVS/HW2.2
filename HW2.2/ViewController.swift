//
//  ViewController.swift
//  HW2.2
//
//  Created by Vladimir Stepanchikov on 22.08.2020.
//  Copyright © 2020 Vladimir Stepanchikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var mainMonitor: UIView!
    
    @IBOutlet weak var redColorValue: UILabel!
    @IBOutlet weak var greenColorValue: UILabel!
    @IBOutlet weak var blueColorValue: UILabel!
    
    @IBOutlet weak var redSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var blueSliderOutlet: UISlider!
    
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainMonitor.layer.cornerRadius = 10
    }
    
    // MARK: - IB Actions
    @IBAction func redSliderAction(_ sender: Any) {
        redColorValue.text = String(redSliderOutlet.value)
    }
    
//    @IBAction func greenSliderAction(_ sender: Any) {
//    }
//    
//    @IBAction func blueSliderAction(_ sender: Any) {
//    }
    
}

