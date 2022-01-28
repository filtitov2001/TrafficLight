//
//  ViewController.swift
//  TrafficLight
//
//  Created by Феликс Титов on 18.08.2021.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var changeButton: UIButton!
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    private var currentColor:TrafficLightColors = .red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        changeButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redView.layer.cornerRadius = redView.frame.width/2
        yellowView.layer.cornerRadius = yellowView.frame.width/2
        greenView.layer.cornerRadius = greenView.frame.width/2
        
    }

    @IBAction func changeButtonPressed() {
        if changeButton.currentTitle == "START" {
            changeButton.setTitle("NEXT", for: .normal)
            redView.alpha = lightIsOn
            return
        }
        
        switch currentColor {
        case .red:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentColor = .yellow
        case .yellow:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            currentColor = .green
        case .green:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentColor = .red
        }
    }
}

extension ViewController {
    private enum TrafficLightColors {
        case red, yellow, green
    }
}

