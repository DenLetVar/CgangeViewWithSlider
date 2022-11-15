//
//  ViewController.swift
//  CgangeViewWithSlider
//
//  Created by Denis on 15.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: - IB Outlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
//MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        setValue(for: redValueLabel, greenValueLabel, blueValueLabel)
        
    }
//MARK: - IB Actions
    @IBAction func changeColor(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider: setValue(for: redValueLabel)
        case greenSlider: setValue(for: greenValueLabel)
        default: setValue(for: blueValueLabel)
        }
//MARK: - Private Methods
    }
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in switch label {
        case redValueLabel:
            label.text = string(from: redSlider)
        case greenValueLabel:
            label.text = string(from: greenSlider)
        default:
            label.text = string(from: blueSlider )
            }
        }
    }
    
    private func string (from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

