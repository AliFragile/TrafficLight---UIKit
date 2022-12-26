//
//  TrafficLightViewController.swift
//  taskk
//
//  Created by Алина Ражева on 05.11.2022.
//

import UIKit

class TrafficLightViewController: UIViewController {

    @IBOutlet var redLight: UILabel!
    @IBOutlet var yellowLight: UILabel!
    @IBOutlet var greenLight: UILabel!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.masksToBounds = true
        redLight.layer.cornerRadius = 75
        yellowLight.layer.masksToBounds = true
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.masksToBounds = true
        greenLight.layer.cornerRadius = 75
        
        redLight.backgroundColor = .systemRed
        yellowLight.backgroundColor = .systemYellow
        greenLight.backgroundColor = .systemGreen
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        button.setTitle("NEXT", for: .normal)
        
        if redLight.alpha == 0.3 || yellowLight.alpha == 0.3 || greenLight.alpha == 0.3 {
            button.tintColor = .white
            redLight.alpha = 1
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        }
    }
}


