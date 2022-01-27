//
//  ViewController.swift
//  TrafficLight
//
//  Created by Феликс Титов on 18.08.2021.
//

import UIKit

enum TrafficLightColors {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var changeButton: UIButton!
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    private var currentColor:TrafficLightColors = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = redView.frame.width/2
        yellowView.layer.cornerRadius = yellowView.frame.width/2
        greenView.layer.cornerRadius = greenView.frame.width/2
        changeButton.layer.cornerRadius = 10
    }

    @IBAction func changeButtonPressed() {
        if changeButton.currentTitle == "START" {
            changeButton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
            return
        }
        
        switch currentColor {
        case .red:
            redView.alpha = 0.3
            yellowView.alpha = 1
            currentColor = .yellow
        case .yellow:
            yellowView.alpha = 0.3
            greenView.alpha = 1
            currentColor = .green
        case .green:
            greenView.alpha = 0.3
            redView.alpha = 1
            currentColor = .red
        }
        
    }
    
}

