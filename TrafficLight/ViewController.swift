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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        changeButton.layer.cornerRadius = 10
    }

    @IBAction func changeButtonPressed() {
        changeButton.setTitle("NEXT", for: .normal)
        
        if redView.alpha == yellowView.alpha {
            redView.alpha = 1
            greenView.alpha = 0.3
        } else if redView.alpha == 1 && yellowView.alpha == greenView.alpha {
            yellowView.alpha = 1
            redView.alpha = 0.3
        } else if yellowView.alpha == 1 && redView.alpha == greenView.alpha {
            greenView.alpha = 1
            yellowView.alpha = 0.3
        }
        
    }
    
}

