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
        redColorValue.text = String(format: "%.2f", redSliderOutlet.value)
        mainMonitor.backgroundColor = colorMainMonitor()
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greenColorValue.text = String(format: "%.2f", greenSliderOutlet.value)
        mainMonitor.backgroundColor = colorMainMonitor()
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueColorValue.text = String(format: "%.2f", blueSliderOutlet.value)
        mainMonitor.backgroundColor = colorMainMonitor()
    }
    
    // MARK: - Private Methods
    
    private func colorMainMonitor() -> UIColor{
        mainMonitor.backgroundColor = UIColor(displayP3Red: CGFloat(redSliderOutlet.value),
                                              green: CGFloat(greenSliderOutlet.value),
                                              blue: CGFloat(blueSliderOutlet.value),
                                              alpha: 1.0)
        return mainMonitor.backgroundColor ?? UIColor(displayP3Red: 0,
                                                      green: 0,
                                                      blue: 0,
                                                      alpha: 1)
    }
    
}
