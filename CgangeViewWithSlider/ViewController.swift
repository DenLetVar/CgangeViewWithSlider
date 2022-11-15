//
//  ViewController.swift
//  CgangeViewWithSlider
//
//  Created by Denis on 15.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        redValueLabel.text = String(format: "%.2f",redSlider.value)
        greenValueLabel.text = String(format: "%.2f",greenSlider.value)
        blueValueLabel.text = String(format: "%.2f",blueSlider.value)
    }
    

    @IBAction func changeColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        redValueLabel.text = String(format: "%.2f",redSlider.value)
        greenValueLabel.text = String(format: "%.2f",greenSlider.value)
        blueValueLabel.text = String(format: "%.2f",blueSlider.value)
    }
    
}

