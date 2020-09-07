//
//  MainViewController.swift
//  HW2.2
//
//  Created by Vladimir Stepanchikov on 04.09.2020.
//  Copyright © 2020 Vladimir Stepanchikov. All rights reserved.
//

import UIKit

protocol CustomizationViewControllerDelegate {
    func saveColor(_ color: UIColor,
                   redValue: Float,
                   greenValue: Float,
                   blueValue: Float)
}

class MainViewController: UIViewController {
    
    @IBOutlet weak var mainViewOutlet: UIView!
    
    private(set) var redSliderValue: Float = 0.00
    private(set) var greenSliderValue: Float = 0.00
    private(set) var blueSliderValue: Float = 0.00
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let customizationVC = segue.destination as! CustomizationViewController
        customizationVC.delegate = self
        customizationVC.redColorNumder = redSliderValue
        customizationVC.greenColorNumder = greenSliderValue
        customizationVC.blueColorNumder = blueSliderValue
    }
    
}

extension MainViewController: CustomizationViewControllerDelegate {
    func saveColor(_ color: UIColor, redValue: Float, greenValue: Float, blueValue: Float) {
        mainViewOutlet.backgroundColor = color
        redSliderValue = redValue
        greenSliderValue = greenValue
        blueSliderValue = blueValue
    }
}
