//
//  ViewController.swift
//  HW2.2
//
//  Created by Vladimir Stepanchikov on 22.08.2020.
//  Copyright © 2020 Vladimir Stepanchikov. All rights reserved.
//

import UIKit

protocol ColorMainViewProtocol {
    var colorMainView: UIColor { get }
}

class CustomizationViewController: UIViewController, ColorMainViewProtocol {
    
    // MARK: - IB Outlets
    @IBOutlet weak var mainMonitor: UIView!
    
    @IBOutlet weak var redColorValue: UILabel!
    @IBOutlet weak var greenColorValue: UILabel!
    @IBOutlet weak var blueColorValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: - Public Properties
    var delegate: CustomizationViewControllerDelegate!
    
    var redColorNumder: Float = 0.0
    var greenColorNumder: Float = 0.0
    var blueColorNumder: Float = 0.0
    
    var colorMainView: UIColor {
        UIColor(displayP3Red: CGFloat(redColorNumder),
                green: CGFloat(greenColorNumder),
                blue: CGFloat(blueColorNumder),
                alpha: 1.0)
    }
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        mainMonitor.layer.cornerRadius = 15
        
        redSlider.value = redColorNumder
        greenSlider.value = greenColorNumder
        blueSlider.value = blueColorNumder
        
        formatValueSlider()
        
        mainMonitor.backgroundColor = colorMainView
    }
    
    // MARK: - IB Actions
    @IBAction func slidersAction() {
        
        formatValueSlider()
        
        redColorNumder = redSlider.value
        greenColorNumder = greenSlider.value
        blueColorNumder = blueSlider.value
        
        mainMonitor.backgroundColor = colorMainView
    }
    
    @IBAction func doneAction(_ sender: UIButton) {
        delegate.saveColor(colorMainView,
                           redValue: redColorNumder,
                           greenValue: greenColorNumder,
                           blueValue: blueColorNumder)
        dismiss(animated: true)
    }
    
    // MARK: - Private Methods
    private func formatValueSlider() {
        redColorValue.text = String(format: "%.2f", redSlider.value)
        greenColorValue.text = String(format: "%.2f", greenSlider.value)
        blueColorValue.text = String(format: "%.2f", blueSlider.value)
    }
}
